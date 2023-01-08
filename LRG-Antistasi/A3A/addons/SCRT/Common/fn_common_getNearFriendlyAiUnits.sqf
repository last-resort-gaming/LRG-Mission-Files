/*
Maintainer: Socrates
   Returns all near friendly AI capable units. 
   Local only.

Return Value:
    <ARRAY> Units

Scope: Client
Environment: Any
Public: Yes

Example:
[] call SCRT_fnc_common_getNearFriendlyAiUnits
*/

if (!unconsciousPossessAi) exitWith {
    []
};

private _units = (units group player) select {
    !(isPlayer _x) 
    && {player distance _x < 200 
    //players might find FAKs anywhere on battlefield to heal their unconscious original body?
    // && {(([_x, "FirstAidKit"] call BIS_fnc_hasItem) || ([_x, "Medikit"] call BIS_fnc_hasItem))
    && {[_x] call A3A_fnc_canFight}}
};
_units = [_units, [], { _x getUnitTrait "Medic" }, "ASCEND"] call BIS_fnc_sortBy;

_units