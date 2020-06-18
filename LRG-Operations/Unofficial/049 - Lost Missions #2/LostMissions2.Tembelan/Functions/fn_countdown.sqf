params ["_duration", "_text"];

_color = "#45f442";//green
_endTime = time + _duration;

[
	{
		params ["_args", "_handle"];
		_args params ["_endTime", "_color", "_text", "_duration"];

		_timeLeft = _endTime - time;
		
		if ((_timeLeft / _duration) < 0.5) then {_color = "#eef441";};//yellow
		if ((_timeLeft / _duration) < 0.2) then {_color = "#ff0000";};//red
		if (_timeLeft < 0) exitWith {
			//exit and remove eventhandler while politely closing the door
			[_handle] call CBA_fnc_removePerFrameHandler;

			_color = "#0f00e6";//blue

			[
				format ["<t color='%1'>--- Time is up! ---</t>",_color],
				-1, -0.4, 5,
				0, 0, 789
			] remoteExec ["BIS_fnc_dynamicText", 0];
		};

		[
			format ["<t size='0.5'>%1:</t><br/><t color='%2' size='0.7'>--- %3 ---</t>", _text, _color, [(_timeLeft/3600),"HH:MM:SS"] call BIS_fnc_timetostring],
			-1, -0.4, 1,
			0, 0, 789
		] remoteExec ["BIS_fnc_dynamicText", 0];
	},
	1,
	[_endTime, _color, _text, _duration]
] call CBA_fnc_addPerFrameHandler;

