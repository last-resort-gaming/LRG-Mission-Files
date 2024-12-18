/*
    File: fn_fell_tree_initial.sqf
    Author: Alablm
    Date: 2021-12-05
    Last Update: Date: 2021-12-06
    Public: Yes

    Description:
        Executes "Axe" behaviour and cuts down trees, bushes, etc on mission start

    Parameter(s):
        _hitObject object to be cut down / hidden

    Returns:
        None

*/

params ["_hitPos"];

private _hitObject = (nearestTerrainObjects [_hitPos, [], 1,false,true]) select 0;

if (!isNil "_hitObject") then {
    [_hitObject, _hitPos] call para_s_fnc_fell_tree;
};
