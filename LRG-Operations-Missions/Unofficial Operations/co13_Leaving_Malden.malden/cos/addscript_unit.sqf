/*
Add Script to individual units spawned by COS.
_unit = unit. Refer to Unit as _unit.
*/

_unit = (_this select 0);

_unit allowfleeing 0.65;
_unit setBehaviour "COMBAT";
_unit setCombatMode "WHITE";
_unit setskill 0.2;

[_unit] exec "cos\random_Uniform.sqf";

_unit addEventHandler ["killed", { _killer = _this select 1; if (isPlayer _killer) then {[_killer,(format ["%1 (civilian) was killed by %2 !!!",name (_this select 0),name (_this select 1)])] remoteExec ["sideChat", 0];}}];



