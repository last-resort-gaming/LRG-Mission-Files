/*
	File: addWeapon.sqf
	Author: Mika Hannola
	Modified by Barbolani to ensure the item space of the unit is maximised
	Description:
	Add a weapon to a unit with the right magazines. Magazine class is fetched from the weapon's config.

	Parameter(s):
	_this select 0: <object> unit that is issued new equipment
	_this select 1: <string> weapon classname
	_this select 2: <scalar> number of magazines
	_this select 3 (Optional): <scalar> index of magazine class in weapon's config (default 0) OR <string> magazine classname

	Returns:
	Primary muzzle name for a followup selectWeapon.

	How to use:
	_muzzle = [player, "arifle_SDAR_F", 6] call A3A_fnc_addWeapon;
	Equips the player with an underwater rifle and six dual purpose magazines.

	_muzzle = [player, "arifle_SDAR_F", 6, 1] call A3A_fnc_addWeapon;
	OR
	_muzzle = [player, "arifle_SDAR_F", 6, "30Rnd_556x45_Stanag"] call A3A_fnc_addWeapon;
	Equips the player with an underwater rifle and six normal magazines.
*/

private ["_unit", "_weapon", "_magazineCount", "_magazineClass", "_weaponExists", "_magazines", "_i", "_muzzles", "_muzzle"];

_unit = _this param [0, objNull, [objNull]];
_weapon = _this param [1, "", [""]];
_magazineCount = _this param [2, 0, [0]];
_magazineClass = _this param [3, 0, [0, ""]];
_weaponExists = isClass (configFile / "CfgWeapons" / _weapon);

//Add magazines
if (_magazineCount > 0) then
{
	if (typeName _magazineClass == typeName 0) then
	{
		_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
		if (count _magazines > 0 && _weaponExists) then
		{
			_magazineClass = _magazines select (_magazineClass min (count _magazines - 1));
		}
		else
		{
			_magazineClass = "";
		};
	};
	if (isClass (configFile / "CfgMagazines" / _magazineClass)) then
	{
	_unit addMagazine _magazineClass;

	};
};

_muzzle = "";
if (_weaponExists) then
{
	//Add weapon if unit doesn't have it yet
	if !(_weapon in weapons _unit) then
	{
		_unit addWeapon _weapon;
	};
	for "_i" from 2 to _magazineCount do
		{
			_unit addMagazine _magazineClass;
		};
	//Determine right muzzle name
	_muzzles = getArray (configFile / "CfgWeapons" / _weapon / "muzzles");
	_muzzle = if (_muzzles select 0 == "this") then {_weapon;} else {_muzzles select 0;};
};

_muzzle;