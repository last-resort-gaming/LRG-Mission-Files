/*
    File: fn_earplugs.sqf
    Author: Aaron Clark <vbawol>
    Date: 2020-04-06
    Last Update: 2020-05-28
    Public: No

    Description:
	    Enables/disables earplugs.

    Parameter(s):
        _status - Description [BOOL]

    Returns: nothing

    Example(s):
	    ["",true] call vn_mf_fnc_earplugs;
*/

params
[
	"_status" 		// 0 : BOOLEAN - status of earplugs
];

localNamespace setVariable ["vn_mf_earplugs",_status];
systemChat localize (["STR_VN_QOL_EARPLUGS_OUT","STR_VN_QOL_EARPLUGS_IN"] select _status);
0.5 fadeSound ([1,0.2] select _status);
