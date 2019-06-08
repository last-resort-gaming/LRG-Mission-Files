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
        _name = format ["<t size='1.2' color='#FFFFFF'>%1</t><br/>", _vehname];


					
        {
            if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
	                
                if(driver _vehicle == _x) then
                {

                    _name = format ["<t size='0.90' color='#A3D19F'>%1 %2</t> <img size='0.85' color='#A3D19F' image='a3\ui_f\data\IGUI\Cfg\Actions\getindriver_ca.paa'/><br/>", _name, (name _x)];
                }
                
                else
                {
      		       
				_name = format ["<t size='0.85' color='#A3D19F'>%1 %2</t> <img size='0.7' color='#A3D19F' image='a3\ui_f\data\IGUI\Cfg\Actions\getingunner_ca.paa'/><br/>", _name, (name _x)];
 
                 };
               
            }
            else
            {
                _name = format ["<t size='0.85' color='#A3D19F'>%1 %2</t> <img size='0.7' color='#A3D19F' image='a3\ui_f\data\IGUI\Cfg\Actions\getincargo_ca.paa'/><br/>", _name, (name _x)];
            };  
              
        } forEach crew _vehicle;
        

      	
      	_HudNames ctrlSetStructuredText parseText  _name;
      	_HudNames ctrlCommit 0;
       	
       
    	};
    sleep 1;
  };  