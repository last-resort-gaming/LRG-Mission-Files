if (!isServer) exitWith {};

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
			_timeLeft = [_timeLeft,"MM:SS"] call BIS_fnc_secondsToString;
		};

		[
			format [
				"<t size='0.8' color='#00ff00'>- %3 -</t><br/><t size='0.8' color='#0000ff'>%1</t><t size='0.8'> - </t><t color='#ff0000' size='0.8'>%2</t>",
				LRG_FN_BluScore, LRG_FN_RedScore, _timeLeft
			],
			-1, -0.4, 1,
			0, 0, 789
		] remoteExec ["BIS_fnc_dynamicText", 0];
	},
	1,
	[_endTime]
] call CBA_fnc_addPerFrameHandler;