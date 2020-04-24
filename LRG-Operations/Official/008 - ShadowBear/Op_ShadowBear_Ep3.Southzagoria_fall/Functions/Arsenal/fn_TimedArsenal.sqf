if ((TimedArsenal) && (isServer)) then {

	while {
		(ArsenalExpiry - round time) > 0
	}
	do {



		_Countdown = format["<t size='1.1' align='center' color='#42e8f4'>Timed Arsenal is Active</t><br/>____________________<br/>The Arsenal will be removed after %1 Seconds.</t>", ArsenalExpiry - round time];
		[_Countdown] remoteExec["LR_fnc_globalHint", 0, false];
		sleep 1;
	};

	waituntil {
		ArsenalExpiry - round time < 1
	};

	{
		deletevehicle(missionNamespace getVariable[_x, objNull]);
	}
	forEach ArsenalName;

	_ArsenalFinalHint = format["<t size='1.5' align='center' color='#F52222'>Arsenal</t><br/>____________________<br/>The Arsenal has been removed."];
	[_ArsenalFinalHint] remoteExec["LR_fnc_globalHint", 0, false];


};