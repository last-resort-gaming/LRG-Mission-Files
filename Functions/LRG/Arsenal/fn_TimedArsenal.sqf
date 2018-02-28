if ((EnableArsenal) && (isServer)) then {

if (TimedArsenal) then {
diag_log format ["LRG_Logging: TimedArsenal Enabled. Arsenal Expiry set at: %1 minutes.", ArsenalExpiry];

	while {
		((ArsenalExpiry * 60) - round time) > 0
	}
	do {
	
		if (((ArsenalExpiry * 60) - round time) > 60) then {
		
		_Countdown = format["<t size='1.0' align='center' color='#2f7c38'>Arsenal is active for %1 minutes.</t>", round (((ArsenalExpiry * 60) - round time) /60)];
		[_Countdown] remoteExec["LR_fnc_globalHintSilent", 0, false];		
		sleep 60;
		
		
		} else {

		_Countdown = format["<t size='1.0' align='center' color='#c97b32'>Arsenal is active for %1 seconds.</t>", (ArsenalExpiry * 60) - round time];
		[_Countdown] remoteExec["LR_fnc_globalHintSilent", 0, false];
		sleep 1;
		
		};
	};

	{
		deletevehicle(missionNamespace getVariable[_x, objNull]);
	}
	forEach ArsenalName;

		_ArsenalRemoved = format["<t size='1.2' align='center' color='#d60007'>Arsenal Removed.</t>"];
		[_ArsenalRemoved] remoteExec["LR_fnc_globalHint", 0, false];
				
	};


};
