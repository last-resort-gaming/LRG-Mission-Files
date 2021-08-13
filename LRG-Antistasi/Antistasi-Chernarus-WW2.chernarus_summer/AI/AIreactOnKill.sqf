private ["_grupo","_killer","_marcador","_super","_enemy","_lado"];
_grupo = _this select 0;
_killer = _this select 1;
_lado = side _grupo;
{
if ([_x] call A3A_fnc_canFight) then
	{
	_enemy = _x findNearestEnemy _x;
	if (!isNull _enemy) then
		{
		if (([primaryWeapon _x] call BIS_fnc_baseWeapon) in mguns) then
			{
			[_x,_enemy] call A3A_fnc_fuegoSupresor;
			}
		else
			{
			if (sunOrMoon == 1 or haveNV) then
				{
				[_x,_x,_enemy] spawn A3A_fnc_cubrirConHumo;
				};
			};
		};
	if (random 1 < 0.5) then {if (count units _grupo > 0) then {_x allowFleeing (1 -(_x skill "courage") + (({!([_x] call A3A_fnc_canFight)} count units _grupo)/(count units _grupo)))}};
	};
sleep 1 + (random 1);
} forEach units _grupo;

