// _type:
// 0 - SL
// 1 - Engineer
// 2 - Medic


if (not isServer) exitWith {};

params ["_type"];

if ((_type < 0) || (_type > 2)) exitWith {};

_loadout = [LR_Loadout_SL, LR_Loadout_Engineer, LR_Loadout_Medic] select _type;
_type = ["UK3CB_BAF_SC_MTP", "UK3CB_BAF_Engineer_MTP", "UK3CB_BAF_Medic_MTP"] select _type;

_spawnPos = getMarkerPos "decoy_safeSpawn";
_group = createGroup [west, true];

_unit = _group createUnit [_type, _spawnPos, [], 0, "NONE"];

_unit setUnitLoadout _loadout;

{
	_x addCuratorEditableObjects [[_unit], true];
} forEach allCurators;