#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_marker"];

//Mission: Capture military administration
if (!isServer and hasInterface) exitWith{};

private _difficultX = if (random 10 < tierWar) then {true} else {false};
private _milAdministrationPos = getMarkerPos _marker;

private _timeLimit = if (_difficultX) then {45 * timeMultiplier} else {90 * timeMultiplier};
private _dateLimit = [date select 0, date select 1, date select 2, date select 3, (date select 4) + _timeLimit];
private _dateLimitNum = dateToNumber _dateLimit;
private _dateLimit = numberToDate [date select 0, _dateLimitNum];//converts datenumber back to date array so that time formats correctly
private _displayTime = [_dateLimit] call A3A_fnc_dateToTimeString;//Converts the time portion of the date array to a string for clarity in hints

private _markerSide = sidesX getVariable [_marker, sideUnknown];

private _nameDest = [_marker] call A3A_fnc_localizar;
private _textX = format [localize "STR_CON_MilAdmin_desc", _nameDest, _displayTime];;
private _taskName = localize "STR_CON_MilAdmin_task";

private _taskId = "CON" + str A3A_taskCount;
[[teamPlayer,civilian],_taskId,[_textX,_taskName,_marker],_milAdministrationPos,false,0,true,"attack",true] call BIS_fnc_taskCreate;
[_taskId, "CON", "CREATED"] remoteExecCall ["A3A_fnc_taskUpdate", 2];


private _milAdministrationIndex = A3A_milAdministrations findIf { _milAdministrationPos distance2D _x < 30 };
if (_milAdministrationIndex isEqualTo -1) exitWith {
	Error_1("For some reason %1 mil administration has no corresponding building, aborting.", _marker);
};

private _milAdministration = A3A_milAdministrations select _milAdministrationIndex;
private _positionsTuple = _milAdministration call SCRT_fnc_common_getMilAdminGarrisonPositions;
private _buildingPositions = _positionsTuple select 0;
private _powPositions = _positionsTuple select 4;

/////////////
//  POWs  //
///////////
private _POWs = [];

private _grpPOW = createGroup teamPlayer;
private _powCount = random [1, 3, 5];

for "_i" from 0 to _powCount do {
    private _buildingPosIndex = selectRandom _powPositions;
    private _buildingPosition = _buildingPositions select _buildingPosIndex;

	_unit = [_grpPOW, FactionGet(reb,"unitUnarmed"), _buildingPosition, [], 0, "NONE"] call A3A_fnc_createUnit;
	_unit allowDamage false;
	[_unit,true] remoteExec ["setCaptive",0,_unit];
	_unit setCaptive true;
	_unit disableAI "MOVE";
	_unit disableAI "AUTOTARGET";
	_unit disableAI "TARGET";
	_unit setUnitPos "UP";
	_unit setBehaviour "CARELESS";
	_unit allowFleeing 0;
	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	_POWS pushBack _unit;
	[_unit,"prisonerFlee"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_unit];
	[_unit] call A3A_fnc_reDress;
};

_grpPOW deleteGroupWhenEmpty true;

{
    _x allowDamage true;
} forEach _POWS;

waitUntil {sleep 1; dateToNumber date > _dateLimitNum or {sidesX getVariable [_marker,sideUnknown] == teamPlayer}};

if (dateToNumber date > _dateLimitNum) then {
	[_taskId, "CON", "FAILED"] call A3A_fnc_taskSetState;
	if (_difficultX) then {
		[25,0,_milAdministrationPos] remoteExec ["A3A_fnc_citySupportChange",2];
		[-1800, _markerSide] remoteExec ["A3A_fnc_timingCA",2];
		[-20,theBoss] call A3A_fnc_addScorePlayer;
	} else {
		[5,0,_milAdministrationPos] remoteExec ["A3A_fnc_citySupportChange",2];
		[-600, _markerSide] remoteExec ["A3A_fnc_timingCA",2];
		[-10,theBoss] call A3A_fnc_addScorePlayer;
	};
} else {
	sleep 10;
	[_taskId, "CON", "SUCCEEDED"] call A3A_fnc_taskSetState;
	if (_difficultX) then {
		[0,800] remoteExec ["A3A_fnc_resourcesFIA",2];
		[-25,0,_milAdministrationPos] remoteExec ["A3A_fnc_citySupportChange",2];
		[1800, _markerSide] remoteExec ["A3A_fnc_timingCA",2];
		{ 
			[600, _x] call A3A_fnc_addMoneyPlayer;
			[20, _x] call A3A_fnc_addScorePlayer;
		} forEach (call SCRT_fnc_misc_getRebelPlayers);
		[20, theBoss] call A3A_fnc_addScorePlayer;
        [200,theBoss, true] call A3A_fnc_addMoneyPlayer;
	} else {
		[0,600] remoteExec ["A3A_fnc_resourcesFIA",2];
		[-20,0,_milAdministrationPos] remoteExec ["A3A_fnc_citySupportChange",2];
		[1200, _markerSide] remoteExec ["A3A_fnc_timingCA",2];
		{ 
			[400, _x] call A3A_fnc_addMoneyPlayer;
			[10, _x] call A3A_fnc_addScorePlayer;
		} forEach (call SCRT_fnc_misc_getRebelPlayers);
		[10, theBoss] call A3A_fnc_addScorePlayer;
        [100, theBoss, true] call A3A_fnc_addMoneyPlayer;
	};
};

[_taskId, "CON", 1200] spawn A3A_fnc_taskDelete;

sleep 600;
{deleteVehicle _x} forEach _POWs;
deleteGroup _grpPOW;
