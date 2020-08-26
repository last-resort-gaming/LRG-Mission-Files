params ["_timer", "_idx"];

if (not hasInterface) exitWith {};

_startTime = player getVariable format ["LRG_Timer_%1_startTime", _timer];

[format ["%1 passed checkpoint %2 at %3", profileName, _idx, [time - _startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]] remoteExec ["systemChat", 0];