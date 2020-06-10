//Saves the Mission within 2 mins of 8 hour shutdown. 

if !(isserver) exitwith {};
[{
	params ["_args", "_pfhID"];
	_args params [];
		if (time > 28620) then {
			_nul = [] execVM "statSave\saveLoop.sqf";
			[_pfhID] call CBA_fnc_removePerFrameHandler;
		};
}, 60, []] call CBA_fnc_addPerFrameHandler;