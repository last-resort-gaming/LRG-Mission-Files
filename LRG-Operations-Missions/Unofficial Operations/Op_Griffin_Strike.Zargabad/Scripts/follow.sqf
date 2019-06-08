/*
    File: follow.sqf
    Author: cobra4v320
*/

_officer = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_officer removeAction _id;

_officer enableAI "ANIM";
_officer enableAI "MOVE";
_officer switchMove "";
[_officer] joinSilent _caller;

if (alive _officer) then {
    _officer addAction ["<t color=""#1EFF00"">" + "Wait Here" ,"stop.sqf", [], 1, true, false, "", "_target distance _this < 10 && side _this == blufor"];
};