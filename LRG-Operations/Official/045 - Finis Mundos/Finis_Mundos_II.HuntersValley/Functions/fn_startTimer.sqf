if (not isServer) exitWith {};

LR_FM_timerStarted = true;
publicVariable "LR_FM_timerStarted";

_endTime = time + (35*60);

[
	{
		params ["_args", "_handle"];
		_args params ["_endTime"];

		if (time >= _endTime) exitWith {
			[parseText "<t size='2' align='center' shadow='1' color='#00ff00'>Decryption completed!</t>"] remoteExec ["hintSilent", 0];
			LR_FM_timerCompleted = true;
			publicVariable "LR_FM_timerCompleted";

			[_handle] call CBA_fnc_removePerFrameHandler;
		};

		_timeLeft = _endTime - time;

		[parseText format ["<t size='1.5' align='center' shadow='1' color='#ff0000'>HDD Decryption in progress...</t><br/><t size='1' align='center'>Complete in %1</t>", [_timeLeft, "MM:SS"] call BIS_fnc_secondsToString]] remoteExec ["hintSilent", 0];
	},
	300,
	[_endTime]
] call CBA_fnc_addPerFrameHandler;