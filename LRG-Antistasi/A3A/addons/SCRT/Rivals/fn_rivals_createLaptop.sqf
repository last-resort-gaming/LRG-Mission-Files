params ["_unit"]; 

private _position = [(position _unit), 1, (random 360)] call SCRT_fnc_misc_extendPosition;
private _laptopPosition = [_position select 0, _position select 1, ((getPosATL _unit) select 2) + 0.5];

private _laptop = [
	(selectRandom ["Land_laptop_03_closed_black_F", "Land_laptop_03_closed_sand_F", "Land_laptop_03_closed_olive_F"]),
	_laptopPosition,
	(random 360)
] call SCRT_fnc_misc_createBelonging;
[_laptop, "Intel_Rivals_Laptop"] remoteExec ["A3A_fnc_flagaction", [teamPlayer,civilian], _laptop];

_laptop