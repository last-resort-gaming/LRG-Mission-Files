if ((EnableArsenal) && (isServer)) then {


["LRG_Logging: TimedArsenal Enabled. Arsenal Expiry set at: %1 minutes.", ArsenalExpiry] call BIS_fnc_logFormat;

	while {
		((ArsenalExpiry * 60) - round time) > 0
	}
	do {
	
		if (((ArsenalExpiry * 60) - round time) > 60) then {
		
		[format ["<t color='#2f7c38' size = '.5'>Arsenal<br />%1 minutes remaining.</t>",round (((ArsenalExpiry * 60) - round time) /60)],1,-0.2,10,2,0,789] remoteExec ["BIS_fnc_dynamicText",0,false];	
		sleep 60;
		
		
		} else {

		[format ["<t color='#c97b32' size = '.5'>Arsenal<br />%1 seconds remaining.</t>", (ArsenalExpiry * 60) - round time],1,-0.2,2,0,0,789] remoteExec ["BIS_fnc_dynamicText",0,false];
		sleep 1;
		
		};
	};

	{
		deletevehicle(missionNamespace getVariable[_x, objNull]);
	}
	forEach ArsenalName;

	[format ["<t color='#d60007' size = '.5'>Arsenal Removed</t>"],1,-0.2,10,0,0,789] remoteExec ["BIS_fnc_dynamicText",0,false];
				

};

