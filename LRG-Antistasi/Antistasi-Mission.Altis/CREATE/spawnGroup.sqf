params ["_posicion","_lado","_tipos",["_override",false],["_canBypass",false]];
//private ["_grupo","_cuenta","_cuentaRangos","_lider","_unidades","_index","_posicion","_lado","_tipos","_override","_canBypass"];
private ["_grupo","_cuenta","_cuentaRangos","_lider","_unidades","_index"];


_allUnits = {(local _x) and (alive _x)} count allUnits;
_allUnitsSide = 0;
_maxUnitsSide = maxUnits;

if (gameMode <3) then
	{
	_allUnitsSide = {(local _x) and (alive _x) and (side group _x == _lado)} count allUnits;
	_maxUnitsSide = round (maxUnits * 0.7);
	};
if (_canBypass) then
	{
	if ((_allUnits + 1 <= maxUnits) or (_allUnitsSide + 1 <= _maxUnitsSide)) then {_canBypass = false};
	};
if (_canBypass) exitWith {grpNull};
_grupo = createGroup _lado;
_rangos = ["LIEUTENANT","SERGEANT","CORPORAL"];
_cuenta = count _tipos;
if (_cuenta < 4) then
	{
	_rangos = _rangos - ["LIEUTENANT","SERGEANT"];
	}
else
	{
	if (_cuenta < 8) then {_rangos = _rangos - ["LIEUTENANT"]};
	};
_cuentaRangos = (count _rangos - 1);
for "_i" from 0 to (_cuenta - 1) do
	{
	if ((_i == 0) or (((_allUnits + 1) < maxUnits) and ((_allUnitsSide + 1) < _maxUnitsSide)) or _override) then
		{
		_unit = _grupo createUnit [(_tipos select _i), _posicion, [], 0, "NONE"];
		_unit allowDamage false;
		_allUnits = _allUnits + 1;
		_allUnitsSide = _allUnitsSide + 1;
		if (_i <= _cuentaRangos) then
			{
			_unit setRank (_rangos select _i);
			};
		if ((_tipos select _i) in squadLeaders) then {_grupo selectLeader _unit};
		sleep 0.5;
		};
	};
//_unidades = units _grupo;
//_index = _unidades findIf {(typeOf _x in squadLeaders)};
//if (_index == -1) then {_grupo selectLeader (_unidades select 0)} else {_grupo selectLeader (_unidades select _index)};
{_x allowDamage true} forEach units _grupo;
_grupo




