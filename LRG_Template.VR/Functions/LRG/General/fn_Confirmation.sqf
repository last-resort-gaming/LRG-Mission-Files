["LRG_Logging: Mission not Configured in LRG Setup!"] call BIS_fnc_logFormat;

sleep 5;
	
 ["<t color='#F52222' size = '0.8'>CONFIGURATION!<br />You need to configure LRG_Setup.sqf</t>",0.5,.8,10,2,0,789] spawn BIS_fnc_dynamicText;