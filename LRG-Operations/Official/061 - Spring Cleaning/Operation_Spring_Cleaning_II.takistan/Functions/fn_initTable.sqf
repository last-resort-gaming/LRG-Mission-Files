params ["_table", "_markers"];


if (isServer) then {
	currentMarker = 0;
	publicVariable "currentMarker";

	briefingTable = _this select 0;
	publicVariable "briefingTable";

	private _firstMarker = _markers select 0;
	[_table, _firstMarker select 0, 40, 6, true, true, 0] call sebs_briefing_table_fnc_createTable;
};
if (not hasInterface) exitWith {};

{
	[
    	_table,
	    format ["SwitchTo%1", _forEachIndex],
	    format ["Switch To %1", _x select 1],
	    {
			params ["_target", "_caller", "_args"];
			_args params ["_index", "_marker"];

			currentMarker = _index;
			publicVariable "currentMarker";

			[briefingTable] remoteExec ["sebs_briefing_table_fnc_clearTable", 0, briefingTable];

			[briefingTable, _marker, 40, 4, true, true, 0] remoteExec ["sebs_briefing_table_fnc_createTable", 0, briefingTable];
		},
	    [_forEachIndex, _x select 0],
	    format ["(currentMarker != %1)", _forEachIndex],
	    false,
	    30,
	    false
	] call LR_fnc_AddAction;
} forEach _markers;