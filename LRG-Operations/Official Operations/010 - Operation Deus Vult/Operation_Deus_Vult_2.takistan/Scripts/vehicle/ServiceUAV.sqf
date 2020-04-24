/*
UAV Servicing Script
Author: MitchJC

LastResortGaming.net

*/

//============================================= SETUP

private ["_u","_t","_vehType","_ServiceTime"];

_u = _this select 0;
_t = typeOf _u;
_vehType = getText(configFile>>"CfgVehicles">>_t>>"DisplayName");
_uav = ["B_UAV_02_dynamicLoadout_F","B_UAV_05_F","B_T_UAV_03_dynamicLoadout_F","B_UGV_01_rcws_F","B_UAV_01_F","CUP_B_USMC_MQ9"];		//Types of UAV.
_ServiceTime = 60;		// Minimum Service Time.

//=============================================  Service Sequence

if (_t in _uav) then {

_u sideChat format  ["Servicing %1. This will take at least %2 Seconds. ", _vehType,_ServiceTime];
_u setFuel 0;
sleep _serviceTime + (floor random 30);
_u setDamage 0;
_u setVehicleAmmo 1;
_u setFuel 1;
sleep 1;

_u sideChat format ["%1 is now ready.", _vehType];

	};
