if ((TimedArsenal) && (isServer)) then {

	while {
		((ArsenalExpiry * 60) - round time) > 0
	}
	do {

		_Countdown = format["<t size='1.0' align='center' color='#00ffff'>Arsenal is active for %1 seconds.</t>", (ArsenalExpiry * 60) - round time];
		[_Countdown] remoteExec["LR_fnc_globalHintSilent", 0, false];
		sleep 1;
	};

	{
		deletevehicle(missionNamespace getVariable[_x, objNull]);
	}
	forEach ArsenalName;

		_ArsenalRemoved = format["<t size='1.2' align='center' color='#d60007'>Arsenal Removed.</t>"];
		[_ArsenalRemoved] remoteExec["LR_fnc_globalHint", 0, false];
				
};

if ((TFAR_ON_Message) && (isServer)) then {

waituntil {sleep 1;(TFAR_Message_Time * 60) < round time};

		_Intro = format["<t size='2.5' align='center' color='#228B22'>TFAR ON.</t>"];
		[_Intro] remoteExec["LR_fnc_globalHint", 0, false];		
		"air_raid" remoteExec ["playSound"];

	};	
				











