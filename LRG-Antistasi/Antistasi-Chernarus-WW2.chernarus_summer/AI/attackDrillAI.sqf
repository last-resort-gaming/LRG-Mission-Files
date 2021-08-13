private _grupo = _this;
//_objetivos = _grupo call A3A_fnc_enemyList;
//_grupo setVariable ["objetivos",_objetivos];
_grupo setVariable ["tarea","Patrol"];
_grupo setVariable ["attackDrill",true];
private _lado = side _grupo;
private _friendlies = if ((_lado == malos) or (_lado == buenos)) then {[_lado,civilian]} else {[_lado]};
_morteros = [];
_mgs = [];
_movable = [leader _grupo];
_baseOfFire = [leader _grupo];
_flankers = [];
_supporters = [];
{
if (alive _x) then
	{
	_result = _x call A3A_fnc_typeOfSoldier;
	_x setVariable ["maniobrando",false];
	if (_result == "Normal") then
		{
		_movable pushBack _x;
		_flankers pushBack _x;
		}
	else
		{
		if (_result == "StaticMortar") then
			{
			_morteros pushBack _x;
			}
		else
			{
			if (_result == "StaticGunner") then
				{
				_mgs pushBack _x;
				}
			else
				{
				if (_result == "StaticBase") then {_supporters pushBack _x};
				};
			_movable pushBack _x;
			_baseOfFire pushBack _x;
			};
		};
	};
} forEach (units _grupo);

if (!(_morteros isEqualTo []) and !(_supporters isEqualTo [])) then
	{
	_num = ((count _morteros) min (count _supporters))-1;
	for "_i" from 0 to _num do
		{
		[_morteros select _i,_supporters select _i] spawn A3A_fnc_staticMGDrill;
		};
	_supporters deleteRange [0,_num];
	for "_i" from (_num + 1) to (count _morteros) - 1 do
		{
		_mort = _morteros select _i;
		_movable pushBack _mort;
		_flankers pushBack _mort;
		_mort setVariable ["typeOfSoldier","Normal"];
		};
	}
else
	{
	{
	_movable pushBack _x;
	_flankers pushBack _x;
	_x setVariable ["typeOfSoldier","Normal"];
	} forEach _morteros;
	};
if (!(_mgs isEqualTo []) and !(_supporters isEqualTo [])) then
	{
	_num = ((count _mgs) min (count _supporters)) - 1;
	for "_i" from 0 to _num do
		{
		[_mgs select _i,_supporters select _i] spawn A3A_fnc_staticMGDrill;
		};
	for "_i" from (_num + 1) to (count _mgs) - 1 do
		{
		(_mgs select _i) setVariable ["typeOfSoldier","Normal"];
		_movable pushBack (_mgs select _i);
		_flankers pushBack (_mgs select _i);
		};
	for "_i" from (_num + 1) to (count _supporters) - 1 do
		{
		(_supporters select _i) setVariable ["typeOfSoldier","Normal"];
		_movable pushBack (_supporters select _i);
		_flankers pushBack (_supporters select _i);
		};
	_mgs deleteRange [(_num+1),count _mgs];
	_supporters deleteRange [(_num+1),count _supporters];
	}
else
	{
	{
	_movable pushBack _x;
	_flankers pushBack _x;
	_x setVariable ["typeOfSoldier","Normal"];
	} forEach (_mgs + _supporters)
	};

_grupo setVariable ["movable",_movable];
_grupo setVariable ["baseOfFire",_baseOfFire];
_grupo setVariable ["flankers",_flankers];
if (side _grupo == buenos) then {_grupo setVariable ["autoRearmed",time + 300]};
{
if (vehicle _x != _x) then
	{
	if !(vehicle _x isKindOf "Air") then
		{
		if ((assignedVehicleRole _x) select 0 == "Cargo") then
			{
			if (isNull(_grupo getVariable ["transporte",objNull])) then {_grupo setVariable ["transporte",vehicle _x]};
			};
		};
	};
} forEach units _grupo;

while {({alive _x} count units _grupo > 0) and (_grupo getVariable ["attackDrill",true])} do
	{
	if !(isPlayer (leader _grupo)) then
		{
		_movable = _movable select {[_x] call A3A_fnc_canFight};
		_baseOfFire = _baseOfFire select {[_x] call A3A_fnc_canFight};
		_flankers = _flankers select {[_x] call A3A_fnc_canFight};
		_objetivos = _grupo call A3A_fnc_enemyList;
		_grupo setVariable ["objetivos",_objetivos];
		_hasRadio = [leader _grupo] call A3A_fnc_hasRadio;
		if !(_objetivos isEqualTo []) then
			{
			_aire = objNull;
			_tanques = objNull;
			{
			_eny = assignedVehicle (_x select 4);
			if (_eny isKindOf "Tank") then
				{
				_tanques = _eny;
				}
			else
				{
				if (_eny isKindOf "Air") then
					{
					if (count (weapons _eny) > 1) then
						{
						_aire = _eny;
						};
					};
				};
			if (!(isNull _aire) and !(isNull _tanques)) exitWith {};
			} forEach _objetivos;
			_lider = leader _grupo;

			_allNearFriends = allUnits select {(_x distance _lider < (distanciaSPWN/2)) and (side group _x in _friendlies)};
			_numNearFriends = count _allNearFriends;
			_numObjetivos = count _objetivos;
			_tarea = _grupo getVariable ["tarea","Patrol"];
			_cercano = _grupo call A3A_fnc_enemigoCercano;
			_soldados = ((units _grupo) select {[_x] call A3A_fnc_canFight}) - [_grupo getVariable ["morteros",objNull]];
			_numSoldados = count _soldados;
			_hide = false;
			if !(isNull _aire) then
				{
				if (_allNearFriends findIf {(_x call A3A_fnc_typeOfSoldier == "AAMan") or (_x call A3A_fnc_typeOfSoldier == "StaticGunner")} == -1) then
					{
					if ((_lado != buenos) and _hasRadio) then {[[getPosASL _lider,_lado,"Air",false],"A3A_fnc_patrolCA"] remoteExec ["A3A_fnc_scheduler",2]};
					_hide = true;
					};
				};
			if !(isNull _tanques) then
				{
				if (_allNearFriends findIf {_x call A3A_fnc_typeOfSoldier == "ATMan"} == -1) then
					{
					_mortero = _grupo getVariable ["morteros",objNull];
					if (!(isNull _mortero) and ([_mortero] call A3A_fnc_canFight)) then
						{
						if ({if (_x distance _tanques < 50) exitWith {1}} count _allNearFriends == 0) then {[_mortero,getPosASL _tanques,4] spawn A3A_fnc_mortarSupport};
						}
					else
						{
						if (!(isNull (_grupo getVariable ["artySupport",objNull])) and (speed _tanques < 1)) then
							{
							if ({if (_x distance _tanques < 100) exitWith {1}} count _allNearFriends == 0) then {[(_grupo getVariable ["artySupport",objNull]),getPosASL _tanques,4] spawn A3A_fnc_artySupportAI};
							}
						else
							{
							if ((_lado != buenos) and _hasRadio) then {[[getPosASL _lider,_lado,"Tank",false],"A3A_fnc_patrolCA"] remoteExec ["A3A_fnc_scheduler",2]};
							};
						};
					_hide = true;
					};
				};
			if (_numObjetivos > 2*_numNearFriends) then
				{
				if !(isNull _cercano) then
					{
					if (_lado != buenos) then {[[getPosASL _lider,_lado,"Normal",false],"A3A_fnc_patrolCA"] remoteExec ["A3A_fnc_scheduler",2]};
					_mortero = _grupo getVariable ["morteros",objNull];
					if (!(isNull _mortero) and ([_mortero] call A3A_fnc_canFight)) then
						{
						if ({if (_x distance _cercano < 50) exitWith {1}} count _allNearFriends == 0) then {[_mortero,getPosASL _cercano,1] spawn A3A_fnc_mortarSupport};
						}
					else
						{
						if (!(isNull (_grupo getVariable ["artySupport",objNull]))) then
							{
							if ({if (_x distance _cercano < 100) exitWith {1}} count _allNearFriends == 0) then {[(_grupo getVariable ["artySupport",objNull]),getPosASL _cercano,1] spawn A3A_fnc_artySupportAI};
							}
						else
							{
							if ((_lado != buenos) and _hasRadio) then {[[getPosASL _lider,_lado,"Normal",false],"A3A_fnc_patrolCA"] remoteExec ["A3A_fnc_scheduler",2]};
							};
						};
					_hide = true;
					};
				};
			if (_hide and !(_grupo getVariable ["berserk",false])) then
				{
				_grupo setVariable ["tarea","Hide"];
				_tarea = "Hide";
				};
			_transporte = _grupo getVariable ["transporte",objNull];
			if (isNull(_grupo getVariable ["transporte",objNull])) then
				{
				_exit = false;
				{
				_veh = vehicle _x;
				if (_veh != _x) then
					{
					if !(_veh isKindOf "Air") then
						{
						if ((assignedVehicleRole _x) select 0 == "Cargo") then
							{
							_grupo setVariable ["transporte",_veh];
							_transporte = _veh;
							_exit = true;
							};
						};
					};
				if (_exit) exitWith {};
				} forEach units _grupo;
				};
			if !(isNull(_transporte)) then
				{
				if !(_transporte isKindOf "Tank") then
					{
					_driver = driver (_transporte);
					if !(isNull _driver) then
						{
						[_driver]  allowGetIn false;
						};
					};
				(units _grupo select {(assignedVehicleRole _x) select 0 == "Cargo"}) allowGetIn false;
				};

			if (_tarea == "Patrol") then
				{
				if ((_cercano distance _lider < 150) and !(isNull _cercano)) then
					{
					_grupo setVariable ["tarea","Assault"];
					_tarea = "Assault";
					}
				else
					{
					if (_numObjetivos > 1) then
						{
						_mortero = _grupo getVariable ["morteros",objNull];
						if (!(isNull _mortero) and ([_mortero] call A3A_fnc_canFight)) then
							{
							if ({if (_x distance _cercano < 50) exitWith {1}} count _allNearFriends == 0) then {[_mortero,getPosASL _cercano,1] spawn A3A_fnc_mortarSupport};
							}
						else
							{
							if (!(isNull (_grupo getVariable ["artySupport",objNull]))) then
								{
								if ({if (_x distance _cercano < 100) exitWith {1}} count _allNearFriends == 0) then {[(_grupo getVariable ["artySupport",objNull]),getPosASL _cercano,1] spawn A3A_fnc_artySupportAI};
								}
							};
						};
					};
				};

			if (_tarea == "Assault") then
				{
				if !(isNull _cercano) then
					{
					if (_cercano distance _lider < 50) then
						{
						_grupo setVariable ["tarea","AssaultClose"];
						_tarea = "AssaultClose";
						}
					else
						{
						if (_cercano distance _lider > 150) then
							{
							_grupo setVariable ["tarea","Patrol"];
							}
						else
							{
							{
							[_x,_cercano] call A3A_fnc_fuegoSupresor;
							} forEach _baseOfFire select {(_x getVariable ["typeOfSoldier",""] == "MGMan") or (_x getVariable ["typeOfSoldier",""] == "StaticGunner")};
							if (sunOrMoon < 1) then
								{
								if !(haveNV) then
									{
									if (hayIFA) then
										{
										if (([_lider] call A3A_fnc_canFight) and ((typeOf _lider) in squadLeaders)) then {[_lider,_cercano] call A3A_fnc_useFlares}
										}
									else
										{
										{
										[_x,_cercano] call A3A_fnc_useFlares;
										} forEach _baseOfFire select {(_x getVariable ["typeOfSoldier",""] == "Normal") and (count (getArray (configfile >> "CfgWeapons" >> primaryWeapon _x >> "muzzles")) == 2)};
										};
									};
								};
							_mortero = _grupo getVariable ["morteros",objNull];
							if (!(isNull _mortero) and ([_mortero] call A3A_fnc_canFight)) then
								{
								if ({if (_x distance _cercano < 50) exitWith {1}} count _allNearFriends == 0) then {[_mortero,getPosASL _cercano,1] spawn A3A_fnc_mortarSupport};
								};
							};
						};
					}
				else
					{
					_grupo setVariable ["tarea","Patrol"];
					};
				};

			if (_tarea == "AssaultClose") then
				{
				if (_cercano distance _lider > 150) then
					{
					_grupo setVariable ["tarea","Patrol"];
					}
				else
					{
					if (_cercano distance _lider > 50) then
						{
						_grupo setVariable ["tarea","Assault"];
						}
					else
						{
						if !(isNull _cercano) then
							{
							_flankers = _flankers select {!(_x getVariable ["maniobrando",false])};
							if (count _flankers != 0) then
								{
								{
								[_x,_x,_cercano] spawn A3A_fnc_cubrirConHumo;
								} forEach (_baseOfFire select {(_x getVariable ["typeOfSoldier",""] == "Normal")});
								_building = [getPosASL _cercano] call A3A_fnc_isBuildingPosition;
								if !(isNull _building) then
									{
									_ingeniero = objNull;
									if !(_building getVariable ["asaltado",false]) then
										{
										{
										if ((_x call A3A_fnc_typeOfSoldier == "Engineer") and {_x != leader _x} and {!(_x getVariable ["maniobrando",true])} and {_x distance _cercano < 50}) exitWith {_ingeniero = _x};
										} forEach _baseOfFire;
										if !(isNull _ingeniero) then
											{
											[_ingeniero,_cercano,_building] spawn A3A_fnc_destroyBuilding;
											}
										else
											{
											[[_flankers,_cercano] call BIS_fnc_nearestPosition,_cercano,_building] spawn A3A_fnc_assaultBuilding;
											};
										};
									}
								else
									{
									[_flankers,_cercano] spawn A3A_fnc_doFlank;
									};
								};
							};
						};
					};
				};

			if (_tarea == "Hide") then
				{
				if (((isNull _tanques) and {isNull _aire} and {_numObjetivos <= 2*_numNearFriends}) or (_grupo getVariable ["berserk",false])) then
					{
					_grupo setVariable ["tarea","Patrol"];
					}
				else
					{
					_movable = _movable select {!(_x getVariable ["maniobrando",false])};
					if !(_movable isEqualTo []) then {_movable spawn A3A_fnc_hideInBuilding};
					if !(isNull _cercano) then
						{
						_mortero = _grupo getVariable ["morteros",objNull];
						if (!(isNull _mortero) and ([_mortero] call A3A_fnc_canFight)) then
							{
							if ({if (_x distance _cercano < 50) exitWith {1}} count _allNearFriends == 0) then {[_mortero,getPosASL _cercano,1] spawn A3A_fnc_mortarSupport};
							}
						else
							{
							if (!(isNull (_grupo getVariable ["artySupport",objNull]))) then
								{
								if ({if (_x distance _cercano < 100) exitWith {1}} count _allNearFriends == 0) then {[(_grupo getVariable ["artySupport",objNull]),getPosASL _cercano,1] spawn A3A_fnc_artySupportAI};
								}
							else
								{
								if ((_lado != buenos) and _hasRadio) then {[[getPosASL _lider,_lado,"Normal",false],"A3A_fnc_patrolCA"] remoteExec ["A3A_fnc_scheduler",2]};
								};
							};
						};
					};
				};
			}
		else
			{
			if (_grupo getVariable ["tarea","Patrol"] != "Patrol") then
				{
				if (_grupo getVariable ["tarea","Patrol"] == "Hide") then {_grupo call A3A_fnc_recallGroup};
				_grupo setVariable ["tarea","Patrol"];
				};
			if (side _grupo == buenos) then
				{
				if (time >= _grupo getVariable ["autoRearm",time]) then
					{
					_grupo setVariable ["autoRearm",time + 120];
					{[_x] spawn A3A_fnc_autoRearm; sleep 1} forEach (_movable select {!(_x getVariable ["maniobrando",false])});
					};
				};
			if !(isNull(_grupo getVariable ["transporte",objNull])) then
				{
				if !(canMove (_grupo getVariable ["transporte",objNull])) then
					{
					_grupo setVariable ["transporte",objNull];
					}
				else
					{
					(units _grupo select {vehicle _x == _x}) allowGetIn true;
					};
				};
			};
		//diag_log format ["Tarea:%1.Movable:%2.Base:%3.Flankers:%4",_grupo getVariable "tarea",_grupo getVariable "movable",_grupo getVariable "baseOfFire",_grupo getVariable "flankers"];
		sleep 30;
		_movable =  (_grupo getVariable ["movable",[]]) select {alive _x};
		if ((_movable isEqualTo []) or (isNull _grupo)) exitWith {};
		_grupo setVariable ["movable",_movable];
		_baseOfFire = (_grupo getVariable ["baseOfFire",[]]) select {alive _x};
		_grupo setVariable ["baseOfFire",_baseOfFire];
		_flankers = (_grupo getVariable ["flankers",[]]) select {alive _x};
		_grupo setVariable ["flankers",_flankers];
		};
	};
