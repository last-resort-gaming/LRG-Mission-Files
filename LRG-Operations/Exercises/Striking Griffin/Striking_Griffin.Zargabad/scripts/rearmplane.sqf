private ["_veh","_vehType"];
_veh = _this select 0;
_vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");

if ((_veh isKindOf "plane") && (driver _veh == player)) exitWith { 

	_veh sideChat format ["Servicing %1.", _vehType];
	_veh setFuel 0;
	
	sleep 15;
	_veh setDamage 0;
	_veh setVehicleAmmo 1;
		
	sleep 5;
	_veh setFuel 1;
	
	_veh sideChat format ["%1 has been serviced", _vehType];
};