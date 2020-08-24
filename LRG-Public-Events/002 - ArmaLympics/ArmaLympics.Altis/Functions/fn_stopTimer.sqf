params ["_timer"];

if (not hasInterface) exitWith {};

_startTime = player getVariable format ["LRG_Timer_%1_startTime", _timer];

[format ["%1 completed %2 in %3", profileName, _timer, [time - _startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]] remoteExec ["systemChat", 0];