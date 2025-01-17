/*
    File: fn_is_resupply.sqf
    Author: Aaron Clark <vbawol>
    Date: 2020-05-12
    Last Update: 2020-05-28
    Public: No

    Description:
	    Checks if object is allowed to be resupplied.

    Parameter(s):
	    _object - Object to check [OBJECT]

    Returns:
	    true of build state is greater than 0 [BOOL]

    Example(s):
	    _object call para_g_fnc_is_resupply;
*/

params
[
	["_object",objNull,[objNull]] 		// 0 : OBJECT
];

not isNull (_object getVariable ["para_g_building", objNull])

