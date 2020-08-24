params ["_timer"];

if (not hasInterface) exitWith {};

player setVariable [format ["LRG_Timer_%1_startTime", _timer], time, true];