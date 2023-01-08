/*
Maintainer: Socrates
    Searches for empty car that is applicable for car demo charge.

Arguments:
    <POSITION> Any marker position that may fit, usually it's the city, but any position might be applied if it has empty civ cars. 

Return Value:
    <NIL>

Scope: Server
Environment: Any
Public: Yes
Dependencies:
    <BOOL> areRivalsEnabled
    <BOOL> areRivalsDefeated
    <BOOL> areRivalsDiscovered
    <INTEGER> inactivityLevelRivals

Example:
[_position] call SCRT_fnc_rivals_tryFindCarDemoCharge;
*/
#include "..\defines.inc"
FIX_LINE_NUMBERS()

params [
    ["_position", [], [[]]]
];

if (_position isEqualTo [0,0,0]) exitWith {
    Error("Zero position, aborting.")
    [1, "Zero position, aborting.", _fileName] call A3A_fnc_log;
};

if (!areRivalsEnabled) exitWith {};
if (areRivalsDefeated) exitWith {};
if (!areRivalsDiscovered) exitWith {};

if (inactivityLevelRivals > 3) exitWith {
    Info_1("Activity level is %1, needs 3 to start, aborting.", str inactivityLevelRivals);
};


private _hasPlantChance = [] call SCRT_fnc_rivals_rollProbability;
if (!_hasPlantChance) exitWith {};

private _civVehicles = vehicles select {
    (typeOf _x) in arrayCivVeh && 
    {_x distance2D _position <= 750 && 
    {alive _x && 
    {speed _x < 1 && 
    {count (crew _x) == 0 && 
    {side _x != teamPlayer && 
    {!(_x getVariable ["carDemoBlock", false])
}}}}}}};

if (count _civVehicles == 0) exitWith {
    Info("No civilian vehicles found, aborting.");
};

selectRandom _civVehicles