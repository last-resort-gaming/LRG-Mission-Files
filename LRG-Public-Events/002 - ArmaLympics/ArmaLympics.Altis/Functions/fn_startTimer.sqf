params ["_timer"];

if (not hasInterface) exitWith {};

_startTime = time;

player setVariable [format ["LRG_Timer_%1_startTime", _timer], _startTime, true];

[
	{
		params ["_args", "_handle"];
		_args params ["_timer", "_startTime"];

		_elapsed = time - _startTime;
		_elapsed = [_elapsed,"MM:SS.MS"] call BIS_fnc_secondsToString;

		[
			format ["<t size='0.8' color='#ffffff'>- %1 -</t>", _elapsed],
			-1, -0.4, 1,
			0, 0, 1232
		] spawn BIS_fnc_dynamicText;

		if (player getVariable [format ["LRG_Timer_%1_stopped", _timer], false]) then {
			[_handle] call CBA_fnc_removePerFrameHandler;
		};

	},0, [_timer, _startTime]
] call CBA_fnc_addPerFrameHandler;