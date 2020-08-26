params ["_thisList", "_timer", "_checkpoint"];

if (not hasInterface) exitWith {};

private _uav = getConnectedUAV player;

private _startTime = player getVariable format ["LRG_Timer_%1_startTime", _timer];

[format ["%1 passed checkpoint %2 at %3", groupId (group (driver _uav)), _checkpoint, [time - _startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]] remoteExec ["systemChat", 0];