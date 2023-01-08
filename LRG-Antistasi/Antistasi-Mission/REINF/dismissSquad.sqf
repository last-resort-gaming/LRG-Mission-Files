//if (!isServer) exitWith{};
private ["_groups","_hr","_resourcesFIA","_wp","_grupo","_veh","_salir"];

_groups = _this select 0;
_hr = 0;
_resourcesFIA = 0;
_salir = false;
{
if ((groupID _x == "MineF") or (groupID _x == "Watch") or (isPlayer(leader _x))) then {_salir = true};
} forEach _groups;

if (_salir) exitWith {hint "You cannot dismiss player led, Watchpost, Roadblocks or Minefield building squads"};

{
if (_x getVariable ["esNATO",false]) then {_salir = true};
} forEach _groups;

if (_salir) exitWith {hint "You cannot dismiss NATO groups"};

_pos = getMarkerPos respawnBuenos;

{
theBoss sideChat format ["%2, I'm sending %1 back to base", _x,name petros];
theBoss hcRemoveGroup _x;
_wp = _x addWaypoint [_pos, 0];
_wp setWaypointType "MOVE";
sleep 3} forEach _groups;

sleep 100;
_items = [];
_municion = [];
_armas = [];
{_grupo = _x;
{
_unit = _x;
if ([_unit] call A3A_fnc_canFight) then
	{
	_hr = _hr + 1;
	_resourcesFIA = _resourcesFIA + (server getVariable [typeOf _x,0]);
	if ((!isNull (assignedVehicle _unit)) or (vehicle _unit != _unit)) then
		{
		_veh = if (vehicle _unit == _unit) then {assignedVehicle _unit} else {vehicle _unit};
		_coste = [(typeOf _veh)] call A3A_fnc_vehiclePrice;
		if (_coste != 0) then
			{
			_resourcesFIA = _resourcesFIA + _coste;
			if (count attachedObjects _veh > 0) then
				{
				_subVeh = (attachedObjects _veh) select 0;
				_resourcesFIA = _resourcesFIA + ([(typeOf _subVeh)] call A3A_fnc_vehiclePrice);
				deleteVehicle _subVeh;
				};
			deleteVehicle _veh;
			};
		};
	{if (not(([_x] call BIS_fnc_baseWeapon) in unlockedWeapons)) then {_armas pushBack ([_x] call BIS_fnc_baseWeapon)}} forEach weapons _unit;
	{if (not(_x in unlockedMagazines)) then {_municion pushBack _x}} forEach magazines _unit;
	if !(hayIFA) then
		{
		_mochi = backpack _unit;
		if (_mochi != "") then
			{
			switch (_mochi) do
				{
				case MortStaticSDKB: {_resourcesFIA = _resourcesFIA + ([SDKMortar] call A3A_fnc_vehiclePrice)};
				case AAStaticSDKB: {_resourcesFIA = _resourcesFIA + ([staticAABuenos] call A3A_fnc_vehiclePrice)};
				case MGStaticSDKB: {_resourcesFIA = _resourcesFIA + ([SDKMGStatic] call A3A_fnc_vehiclePrice)};
				case ATStaticSDKB: {_resourcesFIA = _resourcesFIA + ([staticATBuenos] call A3A_fnc_vehiclePrice)};
				};
			};
		}
	else
		{
		if (secondaryWeapon _unit == MortStaticSDKB) then {_resourcesFIA = _resourcesFIA + ([SDKMortar] call A3A_fnc_vehiclePrice); _armas = _armas - [MortStaticSDKB]};
		if (primaryWeapon _unit == MGStaticSDKB) then {_resourcesFIA = _resourcesFIA + ([SDKMGStatic] call A3A_fnc_vehiclePrice); _armas = _armas - [MGStaticSDKB]};
		if (secondaryWeapon _unit == soporteStaticSDKB2) then {_armas = _armas - [soporteStaticSDKB2]};
		if (secondaryWeapon _unit == soporteStaticSDKB3) then {_armas = _armas - [soporteStaticSDKB3]};
		};

	_items = _items + (items _unit) + (primaryWeaponItems _unit) + (assignedItems _unit) + (secondaryWeaponItems _unit) + [(hmd _unit),(headGear _unit),(vest _unit)];
	};
deleteVehicle _unit;
{caja addWeaponCargoGlobal [_x,1]} forEach _armas;
{caja addMagazineCargoGlobal [_x,1]} forEach _municion;
{caja addItemCargoGlobal [_x,1]} forEach _items;
} forEach units _grupo;
deleteGroup _grupo;} forEach _groups;
_nul = [_hr,_resourcesFIA] remoteExec ["A3A_fnc_resourcesFIA",2];


