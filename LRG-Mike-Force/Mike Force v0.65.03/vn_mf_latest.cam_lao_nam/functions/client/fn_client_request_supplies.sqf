/*
    File: fn_client_request_supplies.sqf
    Author: Aaron Clark <vbawol>
    Date: 2020-03-21
    Last Update: 2020-05-28
    Public: No

    Description:
	    Execute request supplies remote exec.

    Parameter(s):
        _requestName - Name of the supply type
        _agent - Agent which is spawning the supplies

    Returns: nothing

    Example(s):
	    ["",[_request,_agent]] call vn_mf_fnc_client_request_supplies;
*/

['supplyrequest', _this] call para_c_fnc_call_on_server;
