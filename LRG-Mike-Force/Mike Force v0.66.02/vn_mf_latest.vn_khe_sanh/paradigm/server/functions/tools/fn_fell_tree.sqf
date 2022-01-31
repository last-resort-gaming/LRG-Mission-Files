/*
    File: fn_fell_tree.sqf
    Author: dent
    Date: 2021-07-08
    Last Update: Date: 2021-11-11
    Public: Yes

    Description:
        Executes "Axe" behaviour and cuts down trees, bushes, etc

    Parameter(s):
        _hitObject object to be cut down / hidden

    Returns:
        None

*/

params ["_hitObject", ["_hitPosAGL", ""]];

if (_hitPosAGL == "") then {
	// Clean height data (breaks terrain obj search)
	private _objectPos = getPosASL _hitObject;
	private _hitPosAGL = ASLToAGL _objectPos;
};

if (isNil "para_s_tools_chopped_trees") then {para_s_tools_chopped_trees = []};

if (!([_hitObject] call para_g_fnc_is_valid_axe_target)) exitWith {};

hideObjectGlobal _hitObject;

para_s_tools_chopped_trees pushBack _hitPosAGL;
["SET", "chopped_trees", [para_s_tools_chopped_trees]] call para_s_fnc_profile_db;
