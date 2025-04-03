//Mission: Kill Collaborationist
if (!isServer and hasInterface) exitWith{};

private _fileName = "fn_AS_Collaborationist";
[2, "Collaborationist mission init.", _fileName] call A3A_fnc_log;

private _markerX = _this select 0;
private _positionX = getMarkerPos _markerX;

private _POWs = [];
private _groups = [];
private _vehicles = [];

private _timeLimit = 90 * settingsTimeMultiplier;
private _dateLimit = [date select 0, date select 1, date select 2, date select 3, (date select 4) + _timeLimit];
private _dateLimitNum = dateToNumber _dateLimit;
_dateLimit = numberToDate [date select 0, _dateLimitNum];
private _displayTime = [_dateLimit] call A3A_fnc_dateToTimeString;

private _destinationName = [_markerX] call A3A_fnc_localizar;
private _policeTitle = if (factionGEN == "BLU_GEN_F") then { "Gendramerie"} else {"Police"};

////////////
//building occupation
////////////
_appropriateBuildings = nearestObjects [_positionX, ["Land_zachytka","Land_PoliceStation_01_F","Land_i_Barracks_V2_F"], 1000, true]; 
_appropriateBuildings = _appropriateBuildings select {alive _x};
if(count _appropriateBuildings < 1) exitWith {
    [1, "Can't find suitable house for mission, resetting mission request.", _fileName] call A3A_fnc_log;
    ["AS"] remoteExecCall ["A3A_fnc_missionRequest",2];
};

_building = selectRandom _appropriateBuildings;
_buildingType = typeOf _building;

private _powPositions = nil;
private _tablePositions = nil;
private _soldierPositions = nil;
private _collaborantPositions = nil;

switch(true) do {
    case (_buildingType == "Land_zachytka"): {
        _powPositions = [43, 44, 53, 54, 55, 59, 61];
        _tablePositions = [64];
        _soldierPositions = [0,12,13,14,16,17,18,19,20,21,22,23,25,29,34,38,47,49,56,67,68,69,70,71,72,73,74,75,76,77,78,79];
        _collaborantPositions = [24, 28, 50, 51, 63];
    };
    case (_buildingType == "Land_PoliceStation_01_F"): {
        _powPositions = [0, 4];
        _tablePositions = [6];
        _soldierPositions = [1,2,5,7,8,9,10,11,12];
        _collaborantPositions = [3,6,7];
    };
    case (_buildingType == "Land_i_Barracks_V2_F"): {
        _powPositions = [15,16,48,49];
        _tablePositions = [11,12,21,22,23,29];
        _soldierPositions = [0,1,2,3,4,5,6,14,17,18,19,24,32,33,34,35,36,37,38,39,40,41,42,43,44,45];
        _collaborantPositions = [10,13,20,27,28,30];
    };
};

private _buildingPositions = [_building] call BIS_fnc_buildingPositions;
private _buildingPos = position _building;

////////////
//Tasks
////////////
[
    [teamPlayer,civilian],
    "AS",
    [
        format ["A %1 officer terrorizes %2 population. Kill him and people will breathe freely. Do this before %3.",_policeTitle, _destinationName,_displayTime],
        "Kill Collaborationist",
        _markerX
    ],
    _buildingPos,
    false,
    0,
    true,
    "attack",
    true
] call BIS_fnc_taskCreate;
missionsX pushBack ["AS","CREATED"]; 
publicVariable "missionsX";


////////////
//POWs
////////////
private _grpPOW = createGroup teamPlayer;
private _powCount = random [1, 3, 5];

for "_i" from 0 to _powCount do {
    private _buildingPosIndex = selectRandom _powPositions;
    private _buildingPosition = _buildingPositions select _buildingPosIndex;

	_unit = [_grpPOW, SDKUnarmed, _buildingPosition, [], 0, "NONE"] call A3A_fnc_createUnit;
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
	[_unit,"prisonerX"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_unit];
	[_unit] call A3A_fnc_reDress;
    [_unit] spawn {
        params ["_prisoner"];
        waitUntil { sleep 0.5; !(captive _prisoner) || {!(alive _prisoner)}};

        if (alive _prisoner && {!(captive _prisoner)}) then {
            [_prisoner,"sideChat","I'm free, thank you!"] remoteExec ["A3A_fnc_commsMP",[teamPlayer,civilian]];
            private _fakeGroup = createGroup [teamPlayer, true];
            [_prisoner] joinSilent _fakeGroup;

            [_prisoner, teamPlayer] remoteExec ["A3A_fnc_fleeToSide", _prisoner];
            sleep 30;
            [1,0] remoteExec ["A3A_fnc_resourcesFIA",2];
            deleteGroup _fakeGroup;
            deleteVehicle _prisoner;
        };
    };
};

{
    _x allowDamage true;
} forEach _POWS;


////////////
//Collaborationist
////////////
private _groupCollaborant = createGroup Occupants;
private _buildingPosIndex = selectRandom _collaborantPositions;
private _buildingPosition = _buildingPositions select _buildingPosIndex;

private _collaborant = [_groupCollaborant, policeOfficer, _buildingPosition, [], 0, "NONE"] call A3A_fnc_createUnit;
_collaborant allowDamage false;
_collaborant setPos _buildingPosition;
[_collaborant, 100, (random 3)] call SCRT_fnc_common_addRandomMoneyMagazine;
_collaborant setunitpos "UP";
_collaborant disableAI "PATH";
[_collaborant] call A3A_fnc_NATOinit;
_groups pushBack _groupCollaborant;


/////////////////
//Patrols
////////////////
private _patrolGroupRoster = [policeOfficer,policeGrunt,policeGrunt,policeGrunt];
private _buildingPos = position _building;
private _patrolPosition = [
    _buildingPos,
    0,
    200,
    3,
    0,
    1,
    0,
    [],
    [_buildingPos, _buildingPos]
] call BIS_fnc_findSafePos;

private _patrolGroup1 = [_patrolPosition, Occupants, _patrolGroupRoster] call A3A_fnc_spawnGroup;
{
    [_x] call A3A_fnc_NATOinit;
} forEach units _patrolGroup1;
[_patrolGroup1, _buildingPos, 250] call bis_fnc_taskPatrol;
_groups pushBack _patrolGroup1;

private _patrolGroup2 = [_patrolPosition, Occupants, _patrolGroupRoster] call A3A_fnc_spawnGroup;
{
    [_x] call A3A_fnc_NATOinit;
} forEach units _patrolGroup2;
[_patrolGroup2, _buildingPos, 100] call bis_fnc_taskPatrol;
_groups pushBack _patrolGroup2;

private _soilderCount = random [6, 8, 9];
private _pickedIndexes = [];
for "_i" from 0 to _soilderCount do {
    private _buildingPosIndex = selectRandom _soldierPositions;
    private _findIndex = _pickedIndexes find _buildingPosIndex;
    while {_findIndex != -1} do {
        _buildingPosIndex = selectRandom _soldierPositions;
        _findIndex = _pickedIndexes find _buildingPosIndex;
    };
    _pickedIndexes pushBack _buildingPosIndex;

    private _buildingPosition = _buildingPositions select _buildingPosIndex;
    private _soldier = [_groupCollaborant, policeGrunt, _buildingPosition, [], 0, "NONE"] call A3A_fnc_createUnit;
    _soldier allowDamage false;
    _soldier setunitpos "UP";
    _soldier disableAI "PATH";
    [_soldier] call A3A_fnc_NATOinit;
    sleep 1.5;
    _soldier allowDamage true;
};

sleep 10;

_collaborant allowDamage true;

private _road = objNull;
private _radiusX = 5;

while {true} do {
    _road = _buildingPosition nearRoads _radiusX;
    if (count _road > 0) exitWith {};
    _radiusX = _radiusX + 5;
};

private _roadcon = roadsConnectedto (_road select 0);
private _dirveh = if(count _roadcon > 0) then {[_road select 0, _roadcon select 0] call BIS_fnc_DirTo} else {random 360};
private _roadPosition = getPos (_road select 0);

private _policeVehicle1 = vehPoliceCar createVehicle getPos (_road select 0);
_policeVehicle1 setDir _dirveh + 45;
[_policeVehicle1, Occupants] call A3A_fnc_AIVEHinit;

private _policeVehicle2 = vehPoliceCar createVehicle getPos (_road select 0);
_policeVehicle2 setDir _dirveh;
[_policeVehicle2, Occupants] call A3A_fnc_AIVEHinit;

[_policeVehicle1, ["BeaconsStart", 1]] remoteExecCall ["animate", 0, _policeVehicle1];

_vehicles append [_policeVehicle1, _policeVehicle2];


_buildingPosIndex = selectRandom _tablePositions;
private _tablePosition = _buildingPositions select _buildingPosIndex;

private _desk = createVehicle ["Land_CampingTable_small_F", _tablePosition, [], 0, "CAN_COLLIDE"];
_desk setVelocity [0, 0, -1];

//Await until desk have hit the group, it tend to stuck in the air otherwise
sleep 5;
_desk enableSimulation false;

_moneyItems = ["Item_Money","Item_Money_bunch","Item_Money_roll","Item_Money_stack"];

_randomPos = [(random 0.4) + 0.2, (random 0.2) - 0.2, 0]; 
_objects1 = [[_desk,"TOP"], selectRandom _moneyItems, 1, _randomPos, random 180, {0}, true] call BIS_fnc_spawnObjects;
_randomPos = [(random 0.2) + 0.1, (random 0.1) - 0.2, 0]; 
_objects2 = [[_desk,"TOP"], selectRandom _moneyItems, 1, _randomPos, random 180, {0}, true] call BIS_fnc_spawnObjects;

//make sure that no one is invincible
{
    private _group = _x;
    {
        _x allowDamage true;
    } forEach (units _group);
} forEach _groups;

[2, "Everything has been spawned, waiting...", _fileName] call A3A_fnc_log;

waitUntil  {
	sleep 5; 
	(dateToNumber date > _dateLimitNum) || !(alive _collaborant)
};

if (dateToNumber date > _dateLimitNum) then {
    [
        "AS",
        [
            format ["A %1 officer terrorizes %2 population. Kill him and people will breathe freely. Do this before %3.",_policeTitle, _destinationName,_displayTime],
            "Kill Collaborationist",
            _markerX
        ],
        _positionX,
        "FAILED"
    ] call A3A_fnc_taskUpdate;
    [-20,theBoss] call A3A_fnc_playerScoreAdd;
    [10,0,_positionX] remoteExec ["A3A_fnc_citySupportChange",2];
} else {
    [
        "AS",
        [
            format ["A %1 officer terrorizes %2 population. Kill him and people will breathe freely. Do this before %3.",_policeTitle, _destinationName,_displayTime],
            "Kill Collaborationist",
            _markerX
        ],
        _positionX,
        "SUCCEEDED"
    ] call A3A_fnc_taskUpdate;
    { [60,_x] call A3A_fnc_playerScoreAdd } forEach (call BIS_fnc_listPlayers) select { side _x == teamPlayer || side _x == civilian};
    [10,theBoss] call A3A_fnc_playerScoreAdd;
    [0,400] remoteExec ["A3A_fnc_resourcesFIA",2];
	[0,5,_positionX] remoteExec ["A3A_fnc_citySupportChange",2];
};

sleep 30;

_nul = [1200,"AS"] spawn A3A_fnc_deleteTask;

{[_x] spawn A3A_fnc_vehDespawner} forEach _vehicles;
{[_x] spawn A3A_fnc_groupDespawner} forEach _groups;
[3, format ["Collaborationist clean up complete."], _filename] call A3A_fnc_log;

sleep 1000;
{deleteVehicle _x} forEach _POWs;
deleteGroup _grpPOW;