params ["_veh", "_side"];

_heliClass = typeOf _veh;

_veh setVariable ["LRG_FN_startPos", position _veh, true];
_veh setVariable ["LRG_FN_className", _heliClass, true];

_veh addMPEventHandler ["MPKilled", {

	params ["_unit", "_killer"];

	if (hasInterface && {player getUnitTrait "Mission Maker"}) then {
		systemChat format ["Unit killed: %1, by %2 (%3)", _unit, _killer, side _killer];
	};

	if (!isServer) exitWith {};

	// get variables
	_pos = _unit getVariable "LRG_FN_startPos";
	_class = _unit getVariable "LRG_FN_className";

	[
		{_this call LR_FN_fnc_respawnHelicopter;},
		[_unit, _pos, [], _class, civilian],
		30
	] call CBA_fnc_waitAndExecute;
}];