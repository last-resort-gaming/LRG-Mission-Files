private _morty = _this select 0;
private _mortero = vehicle _morty;
if (_mortero == _morty) exitWith {};
if (!alive _mortero) exitWith
	{
	(group _morty) setVariable ["morteros",objNull];
	};
if !(unitReady _morty) exitWith {};
private _posicion = _this select 1;
private _rounds = _this select 2;
private _tipoMuni = (getArray (configfile >> "CfgVehicles" >> (typeOf _mortero) >> "Turrets" >> "MainTurret" >> "magazines")) select 0;
if ({(_x select 0) == _tipoMuni} count (magazinesAmmo _mortero) == 0) exitWith
	{
	moveOut _morty;
	(group _morty) setVariable ["morteros",objNull];
	};
if (_posicion isEqualTo []) then
	{
	private _objetivos = (group _morty) getVariable ["objetivos",[]];
	if !(_objetivos isEqualTo []) then
		{
		{
		_eny = (__x select _i) select 4;
		if ((_eny isKindOf "Man") and (_eny distance (_eny findNearestEnemy _eny) > 100)) exitWith {_posicion = getPosASL _eny};
		} forEach _objetivos;
		};
	};
if (_posicion isEqualTo []) exitWith {};
if !(_posicion inRangeOfArtillery [[_mortero], ((getArtilleryAmmo [_mortero]) select 0)]) exitWith {};

_mortero commandArtilleryFire [_posicion,_tipoMuni,_rounds];
