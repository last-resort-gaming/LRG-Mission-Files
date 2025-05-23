if (!isServer and hasInterface) exitWith{};
private ["_marcador","_vehiculos","_grupos","_soldados","_posicion","_pos","_size","_frontera","_lado","_cfg","_esFIA","_garrison","_antena","_tam","_buildings","_mrk","_cuenta","_tipoGrupo","_grupo","_tipoUnit","_tipoVeh","_veh","_unit","_bandera","_caja","_roads","_mrkMar","_vehicle","_vehCrew","_grupoVeh","_dist","_road","_roadCon","_dirVeh","_bunker","_dir","_posF"];
_marcador = _this select 0;

_vehiculos = [];
_grupos = [];
_soldados = [];

_posicion = getMarkerPos (_marcador);
_pos = [];


_size = [_marcador] call A3A_fnc_sizeMarker;

_frontera = [_marcador] call A3A_fnc_isFrontline;
_lado = muyMalos;
_esFIA = false;
if (lados getVariable [_marcador,sideUnknown] == malos) then
	{
	_lado = malos;
	if ((random 10 >= (tierWar + difficultyCoef)) and (_frontera isEqualTo []) and !(_marcador in forcedSpawn)) then
		{
		_esFIA = true;
		};
	};

_antena = objNull;

if (_lado == malos) then
	{
	if (_marcador in puestos) then
		{
		_buildings = nearestObjects [_posicion,["Land_TTowerBig_1_F","Land_TTowerBig_2_F","Land_Communication_F"], _size];
		if (count _buildings > 0) then
			{
			_antena = _buildings select 0;
			};
		};
	};

_mrk = createMarkerLocal [format ["%1patrolarea", random 100], _posicion];
_mrk setMarkerShapeLocal "RECTANGLE";
_mrk setMarkerSizeLocal [(distanciaSPWN/2),(distanciaSPWN/2)];
_mrk setMarkerTypeLocal "hd_warning";
_mrk setMarkerColorLocal "ColorRed";
_mrk setMarkerBrushLocal "DiagGrid";
_ang = markerDir _marcador;
_mrk setMarkerDirLocal _ang;
if (!debug) then {_mrk setMarkerAlphaLocal 0};
_garrison = garrison getVariable [_marcador,[]];
_garrison = [_garrison,_lado] call A3A_fnc_garrisonReorgTemplates;
_tam = count _garrison;
private _patrol = true;
if (_tam < ([_marcador] call A3A_fnc_garrisonSize)) then
	{
	_patrol = false;
	}
else
	{
	if ({if ((getMarkerPos _x inArea _mrk) and (lados getVariable [_x,sideUnknown] != _lado)) exitWIth {1}} count marcadores > 0) then {_patrol = false};
	};
if (_patrol) then
	{
	_cuenta = 0;
	while {(spawner getVariable _marcador !=2) and (_cuenta < 4)} do
		{
		_arrayGrupos = if (_lado == malos) then
			{
			if (!_esFIA) then {gruposNATOsmall} else {gruposFIASmall};
			}
		else
			{
			gruposCSATsmall
			};
		if ([_marcador,false] call A3A_fnc_fogCheck < 0.3) then {_arrayGrupos = _arrayGrupos - sniperGroups};
		_tipoGrupo = selectRandom _arrayGrupos;

		_grupo = [_posicion,_lado, _tipoGrupo,false,true] call A3A_fnc_spawnGroup;
		if !(isNull _grupo) then
			{
			sleep 1;
			if ((random 10 < 2.5) and (not(_tipogrupo in sniperGroups))) then
				{
				_perro = _grupo createUnit ["Fin_random_F",_posicion,[],0,"FORM"];
				[_perro] spawn A3A_fnc_guardDog;
				sleep 1;
				};
			[leader _grupo, _mrk, "SAFE","SPAWNED", "RANDOM","NOVEH2"] execVM "scripts\UPSMON.sqf";
			_grupos pushBack _grupo;
			{[_x,_marcador] call A3A_fnc_NATOinit; _soldados pushBack _x} forEach units _grupo;
			};
		_cuenta = _cuenta +1;
		};
	};

if (!(_frontera isEqualTo []) and (spawner getVariable _marcador!=2) and (_marcador in puestos)) then
	{
	_grupo = createGroup _lado;
	_tipoUnit = if (_lado==malos) then {staticCrewmalos} else {staticCrewMuyMalos};
	_tipoVeh = if (_lado == malos) then {NATOMortar} else {CSATMortar};
	_pos = [_posicion] call A3A_fnc_mortarPos;
	_veh = _tipoVeh createVehicle _pos;
	_nul=[_veh] execVM "scripts\UPSMON\MON_artillery_add.sqf";
	_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
	[_unit,_marcador] call A3A_fnc_NATOinit;
	_unit moveInGunner _veh;
	_soldados pushBack _unit;
	_vehiculos pushBack _veh;
	sleep 1;
	};

_ret = [_marcador,_size,_lado,_frontera] call A3A_fnc_milBuildings;
_grupos pushBack (_ret select 0);
_vehiculos append (_ret select 1);
_soldados append (_ret select 2);

_tipoVeh = if (_lado == malos) then {NATOFlag} else {CSATFlag};
_bandera = createVehicle [_tipoVeh, _posicion, [],0, "CAN_COLLIDE"];
_bandera allowDamage false;
[_bandera,"take"] remoteExec ["A3A_fnc_flagaction",[buenos,civilian],_bandera];
_vehiculos pushBack _bandera;

_caja = objNull;
if (count (garrison getVariable [_marcador,[]]) >= 8) then
	{
	if (dateToNumber date > server getVariable [format ["caja%1",_marcador],0]) then
		{
		if (_lado == malos) then
			{
			_caja = NATOAmmoBox createVehicle _posicion;
			_nul = [_caja] call A3A_fnc_NATOcrate;
			}
		else
			{
			_caja = CSATAmmoBox createVehicle _posicion;
			_nul = [_caja] call A3A_fnc_CSATcrate;
			};
		_vehiculos pushBack _caja;
		_caja call jn_fnc_logistics_addAction;
		};
	};
{_nul = [_x] call A3A_fnc_AIVEHinit;} forEach _vehiculos;
_roads = _posicion nearRoads _size;

if ((_marcador in puertos) and (spawner getVariable _marcador!=2) and !hayIFA) then
	{
	_tipoVeh = if (_lado == malos) then {vehNATOBoat} else {vehCSATBoat};
	if ([_tipoVeh] call A3A_fnc_vehAvailable) then
		{
		_mrkMar = seaSpawn select {getMarkerPos _x inArea _marcador};
		_pos = (getMarkerPos (_mrkMar select 0)) findEmptyPosition [0,20,_tipoVeh];
		_vehicle=[_pos, 0,_tipoVeh, _lado] call bis_fnc_spawnvehicle;
		_veh = _vehicle select 0;
		[_veh] call A3A_fnc_AIVEHinit;
		_vehCrew = _vehicle select 1;
		{[_x,_marcador] call A3A_fnc_NATOinit} forEach _vehCrew;
		_grupoVeh = _vehicle select 2;
		_soldados = _soldados + _vehCrew;
		_grupos pushBack _grupoVeh;
		_vehiculos pushBack _veh;
		sleep 1;
		};
	{_caja addItemCargoGlobal [_x,2]} forEach swoopShutUp;
	}
else
	{
	if !(_frontera isEqualTo []) then
		{
		if (spawner getVariable _marcador!=2) then
			{
			if (count _roads != 0) then
				{
				_dist = 0;
				_dist2 = 9999;
				_posFrontera = getMarkerPos (_frontera select 0);
				_road = objNull;
				{if (((position _x) distance _posicion > _dist) and ((position _x) distance _posFrontera < _dist2)) then {_road = _x;_dist = position _x distance _posicion;_dist2 = position _x distance _posFrontera}} forEach _roads;
				_roadscon = roadsConnectedto _road;
				_roadcon = objNull;
				{if ((position _x) distance _posicion > _dist) then {_roadcon = _x}} forEach _roadscon;
				_dirveh = [_roadcon, _road] call BIS_fnc_DirTo;
				if (!_esFIA) then
					{
					_grupo = createGroup _lado;
					_grupos pushBack _grupo;
					_pos = [getPos _road, 7, _dirveh + 270] call BIS_Fnc_relPos;
					/*_bunker = "Land_BagBunker_01_Small_green_F" createVehicle _pos;
					_vehiculos pushBack _bunker;
					_bunker setDir _dirveh;
					_pos = getPosATL _bunker;*/
					_tipoVeh = if (_lado==malos) then {staticATmalos} else {staticATmuyMalos};
					_veh = _tipoVeh createVehicle _posicion;
					_vehiculos pushBack _veh;
					_veh setPos _pos;
					_veh setDir _dirVeh + 180;
					_tipoUnit = if (_lado==malos) then {staticCrewmalos} else {staticCrewMuyMalos};
					_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
					[_unit,_marcador] call A3A_fnc_NATOinit;
					[_veh] call A3A_fnc_AIVEHinit;
					_unit moveInGunner _veh;
					_soldados pushBack _unit;
					}
				else
					{
					_tipogrupo = selectRandom gruposFIAMid;
					_grupo = [_posicion, _lado, _tipoGrupo,false,true] call A3A_fnc_spawnGroup;
					if !(isNull _grupo) then
						{
						_veh = vehFIAArmedCar createVehicle getPos _road;
						_veh setDir _dirveh + 90;
						_nul = [_veh] call A3A_fnc_AIVEHinit;
						_vehiculos pushBack _veh;
						sleep 1;
						_unit = _grupo createUnit [FIARifleman, _posicion, [], 0, "NONE"];
						_unit moveInGunner _veh;
						{_soldados pushBack _x; [_x,_marcador] call A3A_fnc_NATOinit} forEach units _grupo;
						};
					};
				};
			};
		};
	};

if (count _roads != 0) then
	{
	_pos = _posicion findEmptyPosition [5,_size,"I_Truck_02_covered_F"];//donde pone 5 antes ponía 10
	if (count _pos > 0) then
		{
		_tipoVeh = [];
		if (_lado == malos) then
			{
			if (!_esFIA) then
				{
				if (random 10 < tierWar) then {_tipoVeh = vehNATOTrucks + (vehNATOAPC select {[_x] call A3A_fnc_vehAvailable})} else {_tipoVeh = vehNATOtrucks};
				}
			else
				{
				_tipoVeh = [vehFIATruck]
				}
			}
		else
			{
			if (random 10 < tierWar) then {_tipoVeh = vehCSATTrucks + (vehCSATAPC select {[_x] call A3A_fnc_vehAvailable})} else {_tipoVeh = vehCSATTrucks};
			};
		private _tipoFinal = selectRandom _tipoVeh;
		_veh = createVehicle [_tipoFinal, _pos, [], 0, "NONE"];
		_veh setDir random 360;
		_vehiculos pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		if (_tipoFinal in vehAPCs) then
			{
			private _vehCfg = configFile >> "CfgVehicles" >>_tipoFinal;
			private _crewCount = {round getNumber (_x >> "dontCreateAI") < 1 && ((_x == _vehCfg && {round getNumber (_x >> "hasDriver") > 0}) || (_x != _vehCfg && {round getNumber (_x >> "hasGunner") > 0}))} count ([_tipoFinal, configNull] call BIS_fnc_getTurrets);
			private _tipoCrew = if (_lado == malos) then {NATOCrew} else {CSATCrew};
			_tipoGrupo = [];
			for "_i" from 1 to _crewCount do {_tipoGrupo pushBack _tipoCrew};
			_grupo = [_posicion,_lado, _tipoGrupo,false,false] call A3A_fnc_spawnGroup;
			{[_x,""] call A3A_fnc_NATOinit} forEach units _grupo;
			[_marcador,_grupo,_veh] spawn A3A_fnc_vehGarrisonCrew;
			};
		};
	};

_cuenta = 0;

if ((!isNull _antena) and (spawner getVariable _marcador!=2)) then
	{
	if ((typeOf _antena == "Land_TTowerBig_1_F") or (typeOf _antena == "Land_TTowerBig_2_F")) then
		{
		_grupo = createGroup _lado;
		_pos = getPosATL _antena;
		_dir = getDir _antena;
		_posF = _pos getPos [2,_dir];
		_posF set [2,23.1];
		if (typeOf _antena == "Land_TTowerBig_2_F") then
			{
			_posF = _pos getPos [1,_dir];
			_posF set [2,24.3];
			};
		_tipoUnit = if (_lado == malos) then {if (!_esFIA) then {NATOMarksman} else {FIAMarksman}} else {CSATMarksman};
		_unit = _grupo createUnit [_tipoUnit, _posicion, [], _dir, "NONE"];
		_unit setPosATL _posF;
		_unit forceSpeed 0;
		//_unit disableAI "MOVE";
		//_unit disableAI "AUTOTARGET";
		_unit setUnitPos "UP";
		[_unit,_marcador] call A3A_fnc_NATOinit;
		_soldados pushBack _unit;
		_grupos pushBack _grupo;
		};
	};

_subCuenta = 0;

for "_i" from 0 to (count _garrison - 1) do
	{
	_grupo = if (_i == 0) then {[_posicion,_lado, (_garrison select _i),true,false] call A3A_fnc_spawnGroup} else {[_posicion,_lado, (_garrison select _i),false,true] call A3A_fnc_spawnGroup};
	_grupos pushBack _grupo;
	{[_x,_marcador] call A3A_fnc_NATOinit; _soldados pushBack _x} forEach units _grupo;
	if (_i == 0) then
		{
		_nul = [leader _grupo, _marcador, "SAFE", "RANDOMUP","SPAWNED", "NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf"
		}
	else
		{
		if !(_frontera isEqualTo []) then
			{
			_indexFrontera = floor ((_i-1)/3);
			_numFronteras = count _frontera;
			if (_indexFrontera >= _numFronteras) then
				{
				_nul = [leader _grupo, _marcador, "AWARE","SPAWNED", "RANDOM","NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf";
				}
			else
				{
				_posFrontera = getMarkerPos (_frontera select _indexFrontera);
				_ang = (_posicion getDir _posFrontera) + (15 - (random 30));
				_distancia = (_size + 75 + (random 50)) min 300;
				_bonus = 300 / _distancia;
				if (_subCuenta == 1) then {_ang = _ang + (45*_bonus)} else {if (_subCuenta == 2) then {_ang = _ang - (45*_bonus)}};
				_subCuenta = _subCuenta + 1;
				if (_subCuenta > 2) then {_subCuenta = 0};
				_relPos = _posicion getPos [_distancia,_ang];
				_relPos = _relPos call A3A_fnc_pickHighestGround;
				if !(_relPos isEqualTo []) then
					{
					{_x setPos _relPos; _x setDir _ang} forEach (units _grupo);
					[_grupo,true] spawn A3A_fnc_digIn;
					}
				else
					{
					_nul = [leader _grupo, _marcador, "AWARE","SPAWNED", "RANDOM","NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf";
					};
				};
			}
		else
			{
			_nul = [leader _grupo, _marcador, "SAFE","SPAWNED", "RANDOM","NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf";
			};
		};
	};

if ((_marcador in puertos) and !hayIFA) then
	{
	_caja addItemCargo ["V_RebreatherIA",round random 5];
	_caja addItemCargo ["G_I_Diving",round random 5];
	};

waitUntil {sleep 1; (spawner getVariable _marcador == 2)};

deleteMarker _mrk;
//{if ((!alive _x) and (not(_x in destroyedBuildings))) then {destroyedBuildings = destroyedBuildings + [position _x]; publicVariableServer "destroyedBuildings"}} forEach _buildings;
{
if (alive _x) then
	{
	deleteVehicle _x
	};
} forEach _soldados;
//if (!isNull _periodista) then {deleteVehicle _periodista};
{deleteGroup _x} forEach _grupos;
{
if !(_x isKindOf "StaticWeapon") then
	{
	if ((!([distanciaSPWN-_size,1,_x,buenos] call A3A_fnc_distanceUnits))) then
		{
		deleteVehicle _x
		}
	else
		{
		if (_x == _caja) then {[format ["caja%1",_marcador],1] call A3A_fnc_addTimeForIdle};
		};
	}
else
	{
	if (lados getVariable [_marcador,sideUnknown] != buenos) then
		{
		if ((!([distanciaSPWN-_size,1,_x,buenos] call A3A_fnc_distanceUnits))) then {deleteVehicle _x};
		}
	else
		{
		if (!(_x getVariable ["staticsToSave",false]) and (_x inArea _marcador)) then {_x setVariable ["staticsToSave",true,true]};
		};
	};
} forEach _vehiculos;
