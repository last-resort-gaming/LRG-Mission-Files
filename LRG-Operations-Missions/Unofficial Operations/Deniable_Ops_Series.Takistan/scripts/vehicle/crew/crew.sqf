Private ["_name","_vehicle","_vehname","_weapname","_weap","_target","_picture","_vehtarget","_azimuth","_wepdir","_hudnames","_ui"];   
	   
disableSerialization;
  while {true} do  {

   	 1000 cutRsc ["HudNames","PLAIN"];
   	 _ui = uiNameSpace getVariable "HudNames";
 	 _HudNames = _ui displayCtrl 99999;

    if(player != vehicle player) then
    {
        _name = "";
        _vehicleID = "";
        _picture = ""; 
        _vehicle = assignedVehicle player;
        _vehname= getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "DisplayName");
        _weapname = getarray (configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Turrets" >> "MainTurret" >> "weapons"); 
        _weap = _weapname select 0;
        _name = format ["<t size='1.2' color='#229BBF'>%1</t><br/>", _vehname];


					
        {
            if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
	                
                if(driver _vehicle == _x) then
                {

                    _name = format ["<t size='0.90' color='#43E046'>%1 %2</t> <img size='0.85' color='#63AD18' image='a3\ui_f\data\IGUI\Cfg\Actions\getindriver_ca.paa'/><br/>", _name, (name _x)];
                }
                
                else
                {

	            _target = cursorTarget;
	            
	            if (_target isKindOf "Car" || _target isKindOf "Motorcycle" || _target isKindOf "Tank" || _target isKindOf "Air" || _target isKindOf "Ship") then

       		{
       			_vehicleID = getText (configFile >> "cfgVehicles" >> typeOf _target >> "displayname");		             
       			_picture = getText (configFile >> "cfgVehicles" >> typeOf _target >> "picture");
      		};
      		       
	              _wepdir =  (vehicle player) weaponDirection _weap;
			  _Azimuth = round  (((_wepdir select 0) ) atan2 ((_wepdir select 1) ) + 360) % 360;
                    _name = format ["<t size='0.85' color='#25C24F'>%1 %2</t> <img size='0.7' color='#63AD18' image='a3\ui_f\data\IGUI\Cfg\Actions\getingunner_ca.paa'/><br/> <t size='0.85' color='#25C24F'>Heading :<t/> <t size='0.85' color='#FCF40D'>%3</t><br/><t size='0.85' color='#25C24F'> Target :<t/> <t size='0.85' color='#FCF40D'>%4</t><br/><t size='0.85' color='#25C24F'> Display : </t><t size='0.85' color='#FCF40D'><img size='1' image='%5'/></t><br/>", _name, (name _x), _Azimuth,_vehicleID, _picture];
 
                 };
               
            }
            else
            {
                _name = format ["<t size='0.85' color='#25C24F'>%1 %2</t> <img size='0.7' color='#63AD18' image='a3\ui_f\data\IGUI\Cfg\Actions\getincargo_ca.paa'/><br/>", _name, (name _x)];
            };  
              
        } forEach crew _vehicle;
        

      	
      	_HudNames ctrlSetStructuredText parseText  _name;
      	_HudNames ctrlCommit 0;
       	
       
    	};
    sleep 1;
  };  