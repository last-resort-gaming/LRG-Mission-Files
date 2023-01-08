if (not isServer and hasInterface) exitWith {};
private ["_cuenta","_plane","_tipo","_ammo","_cluster","_carpet","_sleep","_bomb"];
_plane = _this select 0;
_tipo = _this select 1;
if (isNil "_tipo") then {_tipo = "HE"};
if (_tipo == "") then {_tipo = "HE"};
_ammo = "Bomb_03_F";
_cuenta = 8;
_cluster = false;
_carpet = false;
if (_tipo != "HE") then
	{
	_ammo = "G_40mm_HEDP";
	if (_tipo == "NAPALM") then {_cuenta = 24} else {_cuenta = 48; _carpet = true};
	_cluster = true;
	};
_bonus = if (hayIFA) then {1.5} else {0};

if (typeOf _plane == vehSDKPlane) then
	{
	_cuenta = round (_cuenta / 2);
	if !(hayIFA) then {_bonus = 1};
	};
sleep (random 5) + _bonus;
_sleep = if (!_cluster) then {0.6} else {if (!_carpet) then {0.1} else {0.05}};

for "_i" from 1 to _cuenta do
	{
	sleep _sleep;
	if (alive _plane) then
		{
		_bomb = _ammo createvehicle ([getPos _plane select 0,getPos _plane select 1,(getPos _plane select 2)- 4]);
		waituntil {!isnull _bomb};
		_bomb setDir (getDir _plane);
		if (!_cluster) then
			{
			_bomb setVelocity [0,0,-50]
			}
		else
			{
			if (_this select 1 == "NAPALM") then
				{
				_bomb setVelocity [-5 + (random 10),-5 + (random 10),-50];
				_nul = [_bomb] spawn
					{
					_bomba = _this select 0;
					_pos = [];
					while {!isNull _bomba} do
						{
						_pos = getPosASL _bomba;
						sleep 0.1;
						};
					[_pos] remoteExec  ["A3A_fnc_napalm"];
					};
				}
			else
				{
				_bomb setVelocity [-35 + (random 70),-35 + (random 70),-50];
				};
			};
		};
	};
