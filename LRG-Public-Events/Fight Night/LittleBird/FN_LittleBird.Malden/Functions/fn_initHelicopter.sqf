if (!isServer) exitWith {};

params ["_veh", "_side"];

if (_side == civilian) exitWith {_this call LR_FN_fnc_initMERTHeli};

private ["_texture"];

switch (_side) do {
	case west: { _texture = "z\LRG Mission Assets\Addons\FightNight\Data\Heli_Light_01_ext_blue_co.paa" };
	case east: { _texture = "a3\air_f\Heli_Light_01\Data\Skins\Heli_Light_01_ext_vrana_co.paa" };
	case independent: { _texture = "z\LRG Mission Assets\Addons\FightNight\Data\Heli_Light_01_ext_green_co.paa" };
	default { };
};

_veh setObjectTextureGlobal [0, _texture];

_pylonLoadout = getPylonMagazines _veh;
_heliClass = typeOf _veh;

// Ensure all vehicles have sensor system enabled (useful for MERT heli)
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
_veh setVariable ["LRG_FN_HeliDir", getDir _veh, true];

_veh addMPEventHandler ["MPKilled", {

	params ["_unit", "_killer"];

	if (hasInterface && {player getUnitTrait "Mission Maker"}) then {
		systemChat format ["Unit killed: %1, by %2 (%3)", _unit, _killer, side _killer];
	};

	if (!isServer) exitWith {};

	// get variables
	_pos = _unit getVariable "LRG_FN_startPos";
	_dir = _unit getVariable "LRG_FN_HeliDir";
	_pylonLoadout = _unit getVariable "LRG_FN_pylonLoadout";
	_class = _unit getVariable "LRG_FN_className";
	_heliSide = _unit getVariable "LRG_FN_heliSide";
	_killerSide = side _killer;

	private ["_antSide"];

	if (not (_killerSide in [_heliSide, sideUnknown, civilian])) then {
		switch (_killerSide) do {
			case west: {
				LRG_FN_bluscore = LRG_FN_bluscore + LRG_FN_HeloValue;
			};
			case east: {
				LRG_FN_redscore = LRG_FN_redscore + LRG_FN_HeloValue;
			};
			case independent: {
				LRG_FN_GreScore = LRG_FN_GreScore + LRG_FN_HeloValue;
			};
			default { };
		};

		["LRG_FN_ScoreUpdated", [_killerSide, "Helicopter destroyed!", LRG_FN_HeloValue]] call CBA_fnc_globalEvent;
	};

	[
		{_this call LR_FN_fnc_respawnHelicopter;},
		[_unit, _pos, _dir, _pylonLoadout, _class, _heliSide],
		30
	] call CBA_fnc_waitAndExecute;
}];