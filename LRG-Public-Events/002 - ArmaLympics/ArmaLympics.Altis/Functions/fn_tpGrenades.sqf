if (! isServer) exitWith {};

private _spots = ["he_spawn_1", "he_spawn_2", "he_spawn_3", "he_spawn_4", "he_spawn_5", "he_spawn_6", "he_spawn_7", "he_spawn_8"];
[_spots, true] call CBA_fnc_shuffle;

{
	if !(side _x == west) exitWith {};
	if !(isPlayer (leader _x)) exitWith {};

	private _pos = getMarkerPos (_spots select _forEachIndex);

	{
		_x setPos ([_pos select 0, _pos select 1, 0]);
	} forEach (units _x);
} forEach allGroups;