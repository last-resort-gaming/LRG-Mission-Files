/*
    File: fn_create_state_machine.sqf
    Author: Spoffy
    Date: 2020-12-11
    Last Update: 2020-12-11
    Public: Yes
    
    Description:
		Creates a new state machine
    
    Parameter(s):
		None
    
    Returns:
		State machine [NAMESPACE]
    
    Example(s):
		[] call para_g_fnc_create_state_machine
*/

private _stateMachine = false call para_g_fnc_create_namespace;

_stateMachine setVariable ["INIT", {}];
_stateMachine setVariable ["stateMachineInitialised", false];
_stateMachine setVariable ["stateMachineCurrentStates", []];
_stateMachine setVariable ["stateMachineFinished", false];