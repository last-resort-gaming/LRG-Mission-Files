/*
    File: once_a_minute.sqf
    Author: Aaron Clark
    Date: 2020-07-25
    Last Update: 2021-11-06

    Public: No

    Description:
	No description added yet.

    Parameter(s): none

    Returns: nothing

    Example(s):
    	Not called directly.
*/

//Ensure snakes are active before running the handler
private _activeSnakes = (["snake_bite_chance", 50] call BIS_fnc_getParamValue) > 0;
if (_activeSnakes) then {
  // tame a random snake
  call vn_mf_fnc_snake_handler;
};
