/*
    File: stop.sqf
    Author: cobra4v320
*/

_officer = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_officer removeAction _id;
[_officer] joinSilent grpNull; //removes officer from callers group

_officer playMove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"; //officer goes into kneeling animation

_officer disableai "ANIM";
_officer disableAI "MOVE";

if (alive _officer) then {
    _officer addAction ["<t color=""#1EFF00"">" + "Follow Me" ,"follow.sqf", [], 1, true, false, "", "_target distance _this < 10 && side _this == blufor"];
};