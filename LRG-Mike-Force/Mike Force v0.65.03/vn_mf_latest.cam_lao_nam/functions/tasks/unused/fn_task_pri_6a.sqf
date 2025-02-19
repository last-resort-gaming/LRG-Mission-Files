/*
	File: fn_task_pri_a6.sqf
	Author: Spoffy
	Date: 2020-02-29
	Last Update: 2020-03-15
	Public: No

	Description:
		Primary 'Defend the Village'.
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
 *    pos - Position to defend.
 */

params ["_taskDataStore"];

_taskDataStore setVariable ["INIT", {
	params ["_taskDataStore"];

	private _spawnPos = _taskDataStore getVariable ["pos", getMarkerPos (_taskDataStore getVariable "taskMarker")];
	_taskDataStore setVariable ["defendPos", _spawnPos];

	[[["defend_village", _spawnPos]]] call _fnc_initialSubtasks;
}];

_taskDataStore setVariable ["defend_village", {
	params ["_taskDataStore"];

	private _defendPos = _taskDataStore getVariable "defendPos";

	if (isNil {_taskDataStore getVariable "units"}) then {
		private _relevantGroups = _taskDataStore getVariable "taskGroups" apply {missionNamespace getVariable [_x, grpNull]};
		private _relevantPlayerCount = (_relevantGroups call para_g_fnc_count_units_in_groups) max 1;
		private _unitCount = if (vn_mf_param_ai_quantity == 0) then { 1 } else { 1 max _relevantPlayerCount * 2 };
		private _squadCount =  ceil (_unitCount / 8);

		private _groups = [];
		private _units = [];

		private _squadComposition = [8] call vn_mf_fnc_squad_standard;

		for "_i" from 1 to _squadCount do {
			private _squad = [_squadComposition, east, _defendPos getPos [300 + random 100, random 360]] call para_g_fnc_create_squad;
			_groups pushBack (_squad # 1);
			_units append (_squad # 0);
		};

		_taskDataStore setVariable ["units", _units];
		_taskDataStore setVariable ["groups", _groups];
	};

	private _units = _taskDataStore getVariable ["units", [objNull]];
	private _groups = _taskDataStore getVariable ["groups", []];
	private _percentAlive = count (_units select {alive _x}) / count _units;

	{
		//If they've got no active waypoint, add a new SAD waypoint
		if (currentWaypoint _x >= (count waypoints _x - 1)) then {
			_x addWaypoint [_defendPos, 20] setWaypointType "SAD";
		};
	} forEach _groups;

	if (_percentAlive < 0.2) then {
		//Make them retreat here or something?
		["SUCCEEDED"] call _fnc_finishSubtask;
		["SUCCEEDED"] call _fnc_finishTask;
	};
}];

_taskDataStore setVariable ["FINISH", {
	[_taskDataStore getVariable ["units", []]] call para_s_fnc_cleanup_add_items;
}];