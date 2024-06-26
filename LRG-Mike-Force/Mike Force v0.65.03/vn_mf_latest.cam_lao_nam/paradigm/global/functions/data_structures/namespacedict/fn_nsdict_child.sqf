/*
    File: fn_nsdict_child.sqf
    Author: Spoffy
    Date: 2020-09-01
    Last Update: 2020-09-01
    Public: No
    
    Description:
        No description added yet.
    
    Parameter(s):
        _localVariable - Description [DATATYPE, defaults to DEFAULTVALUE]
    
    Returns:
        Function reached the end [BOOL]
    
    Example(s):
        [parameter] call vn_fnc_myFunction
*/
params ["_dict", "_key"];

if (_key isEqualType []) then {
	_key = _key joinString nsdict_separator;
};

_dict + nsdict_separator + _key;