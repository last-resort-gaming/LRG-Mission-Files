if (!isServer) exitWith {};

// reset scores just to be sure c:
LRG_FN_BluScore = 0;
LRG_FN_RedScore = 0;
LRG_FN_GreScore = 0;

LRG_FN_GameStarted = true;
_endTime = time + LRG_FN_Duration;

[
	{
		params ["_args", "_handle"];
		_args params ["_endTime"];

		_timeLeft = _endTime - time;

		if (_timeLeft < 0) then {
			_timeLeft = "Game Over";
		} else {
			_timeLeft = [_timeLeft,"HH:MM:SS"] call BIS_fnc_secondsToString;
		};

		[
			format ["<t size='0.8' color='#ffffff'>- %7 -</t><br/><t size='0.8' color='#0000ff'>%1</t><t size='0.8'> - </t><t color='#ff0000' size='0.8'>%2</t><t size='0.8'> - </t><t color='#00ff00' size='0.8'>%3</t><br/>%8<br/><t size='0.5' color='#0000ff'>%4</t><t size='0.5'> - </t><t color='#ff0000' size='0.5'>%5</t><t size='0.5'> - </t><t color='#00ff00' size='0.5'>%6</t>",
				LRG_FN_BluScore, LRG_FN_RedScore, LRG_FN_GreScore,
				[LRG_FN_Blu_TTL,"MM:SS"] call BIS_fnc_secondsToString,
				[LRG_FN_Red_TTL,"MM:SS"] call BIS_fnc_secondsToString,
				[LRG_FN_Gre_TTL,"MM:SS"] call BIS_fnc_secondsToString,
				_timeLeft, LRG_FN_ZoneContest
			],
			-1, -0.4, 1,
			0, 0, 1232
		] remoteExec ["BIS_fnc_dynamicText", 0];
	},
	1,
	[_endTime]
] call CBA_fnc_addPerFrameHandler;

call LR_FN_fnc_initZone;