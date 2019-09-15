private ["_veh"];
_veh = _this select 0;
_type = typeOf _veh;
_vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");

if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};

if (!(_veh isKindOf "CUP_B_USMC_MQ9")) exitWith { 
	_veh sideChat "This Service Area is for UAVs only!"; 
};

_veh sideChat format  ["Servicing %1. This will take at least 3 minutes. ", _vehType];

_veh setFuel 0;

//---------- FINISHED

sleep 170 + (random 30);

_veh setDamage 0;
_veh setVehicleAmmo 1;
_veh setFuel 1;
sleep 2;

_veh sideChat format ["%1 is now ready.", _vehType];