/* ----------------------------------------------------------------------------
Function: CBAP_fnc_addPerFrameHandler
Description:
    Add a handler that will execute every frame, or every x number of seconds.
Parameters:
    _function - The function you wish to execute. <CODE>
    _delay    - The amount of time in seconds between executions, 0 for every frame. [optional] (default: 0) <NUMBER>
    _args     - Parameters passed to the function executing. This will be the same array every execution. [optional] <ANY>
Returns:
    _handle - a number representing the handle of the function. Use this to remove the handler. <NUMBER>
Examples:
    (begin example)
        _handle = [{player sideChat format ["every frame! _this: %1", _this];}, 0, ["some","params",1,2,3]] call CBAP_fnc_addPerFrameHandler;
    (end)
Author:
    Nou & Jaynus, donated from ACRE project code for use by the community; commy2
---------------------------------------------------------------------------- */
params [["_function", {}, [{}]], ["_delay", 0, [0]], ["_args", []]];

if (_function isEqualTo {}) exitWith {-1};

if (isNil "CBAP_PFHhandles") then {
    CBAP_PFHhandles = [];
};

if (count CBAP_PFHhandles >= 999999) exitWith {
    diag_log "Maximum amount of per frame handlers reached!";
    diag_log _function;
    -1
};

private _handle = CBAP_PFHhandles pushBack count CBAP_perFrameHandlerArray;

CBAP_perFrameHandlerArray pushBack [_function, _delay, diag_tickTime, diag_tickTime, _args, _handle];

_handle
