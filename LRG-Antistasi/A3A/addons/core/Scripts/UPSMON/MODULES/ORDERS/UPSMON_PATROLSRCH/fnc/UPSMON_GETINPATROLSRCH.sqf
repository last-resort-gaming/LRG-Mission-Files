/****************************************************************
File: UPSMON_DORESEARCH.sqf
Author: Azroul13

Description:
	The script will assign a combat waypoint to the group

Parameter(s):

Returns:
	nothing
****************************************************************/

private ["_grp","_position","_currpos","_time"];

_grp = _this select 0;
_position = _this select 1;
_currpos = _this select 2;

_grp setvariable ["UPSMON_Alertpos",_position];
_time = time + UPSMON_SRCHTIME + (1.4 * (_position vectordistance _currpos));
_grp setvariable ["UPSMON_SRCHTIME",_time];
_grp setvariable ["UPSMON_Grpmission","PATROLSRCH"];
_grp setvariable ["UPSMON_attackpos",[]];