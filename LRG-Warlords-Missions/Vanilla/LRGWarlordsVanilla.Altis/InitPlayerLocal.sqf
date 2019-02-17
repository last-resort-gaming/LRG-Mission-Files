
if (!hasInterface) exitWith {};

_null = [] execVM "scripts\QS\QS_icons.sqf";
[] execVM "scripts\YAINA\earplugs.sqf";

0 enableChannel [true, false];
1 enableChannel [true, true];
2 enableChannel [false, false];
3 enableChannel [false, false];
4 enableChannel [true, true];
5 enableChannel [true, true];

[] execVM "scripts\lrg\JoinMessages.sqf";