if (!isServer) exitWith {};

params ["_veh", "_side"];

if (_side == civilian) exitWith {_this call LR_FN_fnc_initMERTHeli};

_texture = [
	"a3\air_f\Heli_Light_01\Data\Skins\Heli_Light_01_ext_vrana_co.paa",
	"z\LRG Mission Assets\Addons\FightNight\Data\Heli_Light_01_ext_blue_co.paa"
] select (_side == west);

_veh setObjectTextureGlobal [0, _texture];

_pylonLoadout = getPylonMagazines _veh;
_heliClass = typeOf _veh;

// Ensure all vehicles have sensor system enabled
if !(vehicleReportOwnPosition _veh) then {
 _veh setVehicleReportRemoteTargets true;
 _veh setVehicleReceiveRemoteTargets true;
 _veh setVehicleReportOwnPosition true;
};

// Set vehicle variables
_veh setVariable ["LRG_FN_startPos", position _veh, true];
_veh setVariable ["LRG_FN_pylonLoadout", _pylonLoadout, true];
_veh setVariable ["LRG_FN_className", _heliClass, true];
_veh setVariable ["LRG_FN_heliSide", _side, true];

_veh addMPEventHandler ["MPKilled", {

	params ["_unit", "_killer"];

	if (hasInterface && {player getUnitTrait "Mission Maker"}) then {
		systemChat format ["Unit killed: %1, by %2 (%3)", _unit, _killer, side _killer];
	};

	if (!isServer) exitWith {};

	// get variables
	_pos = _unit getVariable "LRG_FN_startPos";
	_pylonLoadout = _unit getVariable "LRG_FN_pylonLoadout";
	_class = _unit getVariable "LRG_FN_className";
	_side = _unit getVariable "LRG_FN_heliSide";

	// update score
	if (_side == west) then {
		LRG_FN_redscore = LRG_FN_redscore + LRG_FN_HeloValue;
		_antSide = east;
	} else {if (_side == east) then {
		LRG_FN_bluscore = LRG_FN_bluscore + LRG_FN_HeloValue;
		_antSide = west;
	};};

	["LRG_FN_ScoreUpdated", [_antSide, "Helicopter destroyed!", LRG_FN_HeloValue]] call CBA_fnc_globalEvent;

	[
		{_this call LR_FN_fnc_respawnHelicopter;},
		[_unit, _pos, _pylonLoadout, _class, _side],
		30
	] call CBA_fnc_waitAndExecute;
}];