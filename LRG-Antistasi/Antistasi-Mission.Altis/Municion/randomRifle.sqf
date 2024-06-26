private ["_unit","_compatibles","_posibles","_rifle","_helmet","_uniform","_vest"];

_unit = _this select 0;
_pool = _this select 1;
if (_pool isEqualTo []) exitWith {};
_rifleFinal = selectRandom _pool;
if (_rifleFinal == primaryWeapon _unit) exitWith {};

_magazines = getArray (configFile / "CfgWeapons" / (primaryWeapon _unit) / "magazines");
{_unit removeMagazines _x} forEach _magazines;
_unit removeWeaponGlobal (primaryWeapon _unit);

if (_rifleFinal in unlockedGL) then
	{
	_unit addMagazine ["1Rnd_HE_Grenade_shell", 3];
	};
[_unit, _rifleFinal, 5, 0] call A3A_fnc_addWeapon;

if (count unlockedOptics > 0) then
	{
	if (_this select 2) then
		{
		_compatibles = [primaryWeapon _unit] call BIS_fnc_compatibleItems;
		_posibles = [];
		{
		_optic = _x;
		{if (_optic == _x) exitWith {_posibles pushBack _x}} forEach _compatibles;
		} forEach unlockedOptics;
		if (count _posibles > 0) then {_unit addPrimaryWeaponItem (selectRandom _posibles)};
		};
	};