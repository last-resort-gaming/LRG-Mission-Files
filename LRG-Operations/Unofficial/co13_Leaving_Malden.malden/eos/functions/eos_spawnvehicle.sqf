_position=(_this select 0);
_side=(_this select 1);
_faction=(_this select 2);
_type=(_this select 3);
_special = if (count _this > 10) then {_this select 4} else {"CAN_COLLIDE"};

_vehicleType=[_faction,_type] call eos_fnc_getunitpool;
	_grp = createGroup _side;

	_vehPositions=[(_vehicleType select 0)] call BIS_fnc_vehicleRoles;
	_vehicle = createVehicle [(_vehicleType select 0), _position, [], 0, _special];
	[_vehicle] exec "scripts\random_veh_loadout.sqf";

_vehCrew=[];

		{
	_currentPosition=_x;
	if (_currentPosition select 0 == "driver")then {
			_unit = _grp createUnit [(_vehicleType select 1), _position, [], 0, "CAN_COLLIDE"];					
			_unit assignAsDriver _vehicle;
			_unit moveInDriver _vehicle;
			_vehCrew set [count _vehCrew,_unit];
			[_unit] exec "eos\random_Uniform.sqf";
			};
	
	if (_currentPosition select 0 == "turret")then {
			_unit = _grp createUnit [(_vehicleType select 1), _position, [], 0, "CAN_COLLIDE"];
			_unit assignAsGunner _vehicle;
			_unit MoveInTurret [_vehicle,_currentPosition select 1];
			_vehCrew set [count _vehCrew,_unit];
			[_unit] exec "eos\random_Uniform.sqf";
			};
			
		}foreach _vehPositions;
	
_return=[_vehicle,_vehCrew,_grp];

_return