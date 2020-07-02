if (!isServer) exitWith {};

params ["_obj", "_value", "_marker"];

_obj setVariable ["LRG_FN_objValue", _value, true];
_obj setVariable ["LRG_FN_objMarker", _marker, true];

[_obj] call ace_zeus_fnc_addObjectToCurator;

// spawn little patrols around the objectives on land
if !(_obj isKindOf "Boat") then {
	[
		position _obj,
		_marker,
		"IND_F",
		0,
		[0, 0],
		ROAD,
		200,
		[1, 5],
		[0, 0],
		[0, 0],
		[0, 0],
		[0, 0],
		[0, 0],
		[0, 0],
		[0, 0],
		[0, 0]
	] call LR_fnc_SpawnAI;
};

_obj addMPEventHandler ["MPKilled", {
	if (!isServer) exitWith {};

	params ["_unit", "_killer"];

	_side = side _killer;

	// get variables
	_value = _unit getVariable "LRG_FN_objValue";
	_marker = _unit getVariable "LRG_FN_objMarker";

	_colour = [civilian, true] call BIS_fnc_sideColor;

	if (isPlayer _killer) then {
		// update score
		if (_side == west) then {
			LRG_FN_bluscore = LRG_FN_bluscore + _value;
			_colour = [_side, true] call BIS_fnc_sideColor;
		} else {if (_side == east) then {
			LRG_FN_redscore = LRG_FN_redscore + _value;
			_colour = [_side, true] call BIS_fnc_sideColor;
		};};

		["LRG_FN_ScoreUpdated", [_side, "Objective complete!", _value]] call CBA_fnc_globalEvent;
	};

	_marker setMarkerColor _colour;
}];