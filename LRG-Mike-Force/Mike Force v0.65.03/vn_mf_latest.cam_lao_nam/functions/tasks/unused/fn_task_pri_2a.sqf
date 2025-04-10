/*
    File: fn_task_pri_2a.sqf
    Author: Spoffy
    Date: 2020-02-24
    Last Update: 2020-04-02
    Public: No

    Description:
        Deliver vital supplies to the zone.
		Uses the state machine task system.

    Parameter(s):
		_taskDataStore - Namespace for storing task info [Object]

    Returns: nothing

    Example(s):
        Not directly called.
*/

/*
 * Task Parameters:
 *    None
 * Subtask Parameters:
 * 	  None
 * Runtime Parameters:
 *    pos - Pos to deliver the box to.
 */

params ["_taskDataStore"];

_taskDataStore setVariable ["INIT", {
	params ["_taskDataStore"];

	private _defaultPosition = getMarkerPos (_taskDataStore getVariable "taskMarker");
	private _destPos = _taskDataStore getVariable ["pos", _defaultPosition];

	_taskDataStore setVariable ["destPos", _destPos];

	[[["deliver_supplies", _destPos]]] call _fnc_initialSubtasks;
}];

_taskDataStore setVariable ["deliver_supplies", {
	params ["_taskDataStore"];

	private _destPos = _taskDataStore getVariable "destPos";
	if !((allUnits inAreaArray [_destPos,15,15,0,false]) select {alive _x && side _x == west} isEqualTo []) then {
		["SUCCEEDED"] call _fnc_finishSubtask;
		["SUCCEEDED"] call _fnc_finishTask;
	};
}];

_taskDataStore setVariable ["FINISH", {
}];