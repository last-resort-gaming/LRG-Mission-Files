/*
    File: eh_HandleDisconnect.sqf
    Author: Aaron Clark <vbawol>
    Date: 2020-03-01
    Last Update: 2020-05-27
    Public: No

    Description:
		Handle Disconnect Event Handler that saves player vars on disconnect.

    Parameter(s):
		_unit - unit formerly occupied by player [OBJECT]
		_id - unique DirectPlay ID [NUMBER]
		_uid - getPlayerUID of player [STRING]
		_name - profileName of the leaving player [STRING]

    Returns:
    	Always returns false [BOOL]

    Example(s):
    	Not called directly.
*/

params
[
	"_unit",
	"_id",
	"_uid",
	"_name"
];
private _prefix = "vn_mf_db_";

private _config = (missionConfigFile >> "gamemode" >> "vars" >> "players");
private _blacklisted = getArray(_config >> "blacklisted");

private _vardata = [];
if !(isNull _unit) then
{
	// remove blacklisted vars
	private _all_player_vars = (allVariables _unit) - _blacklisted;
	// filter for proper prefix and populate array to be saved
	{
		_vardata pushBack [_x,(_unit getVariable _x)];
	} forEach (_all_player_vars select {_x find _prefix == 0});

	// save data
	["SET", (_uid + "_data"), _vardata] call para_s_fnc_profile_db;

	// save players loadout
	["SET", (_uid + "_loadout"), getUnitLoadout _unit] call para_s_fnc_profile_db;

	// delete unit
	deleteVehicle _unit;
};

["%1 _vardata %2",_this, _vardata] call BIS_fnc_logFormat;

false
