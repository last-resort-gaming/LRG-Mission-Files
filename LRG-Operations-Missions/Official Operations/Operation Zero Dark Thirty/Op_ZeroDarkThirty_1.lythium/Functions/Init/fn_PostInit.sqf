/*
	LRG MISSION TEMPLATE
	fn_PostInit.sqf
	Author: MitchJC

*/

if (hasInterface) then {

	enableSaving [false, false];
	enableSentences false;
	enableRadio false;
	
	if (VehicleCrewList) then {

	_null = [] execVM "scripts\vehicle\crew\crew.sqf";
	
	};

	if (PilotCheck) then {

	_null = [] execVM "scripts\pilotCheck.sqf";
	
	};

	if (ShowMapIcons) then {

	_null = [] execVM "scripts\misc\QS_icons.sqf";
	
	};

	player setVariable ["tf_sendingDistanceMultiplicator", RadioRange];

	if (safezoneEnabled) then {

	player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "respawn_west") < safezoneDistance) then {
		deleteVehicle _projectile;
		hintC "Are you some kind of special? No using Weapon Systems at base! I've had to write this because of retards like you!";
	}}];
	
	};

If (!Confirmation) then {

		_Config = format["<t size='2.5' align='center' color='#F52222'>CONFIGURATION</t><br/>____________________<br/><br/>You need to configure LRG_Setup.sqf"];
		[_Config] remoteExec ["LR_fnc_globalHint",0,false];
	
	};	
	
if (!ArsenalLoadSave) then {
[missionNamespace, "arsenalOpened", {
		disableSerialization;
		params ["_display"];
		_display displayAddEventHandler ["keydown", "_this select 3"];
		{(_display displayCtrl _x) ctrlShow false} forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
	}] call BIS_fnc_addScriptedEventHandler;
	};	
};


adminCurators = allCurators;

UAVFIX_SWITCH = false;
publicVariable "UAVFIX_SWITCH";


	if (DynamicWeather) then {

	[] execVM "scripts\real_weather.sqf";
	};
	
//while {true} do {
//if (isServer) then {
//	my_dust_storm_duration = 600 + random 1200;
//	publicVariable "my_dust_storm_duration";
//	pause_between_dust_storm = 240 + random 600;
//	publicVariable "my_dust_storm_duration";
//};
//waitUntil {(!isNil "my_dust_storm_duration") and (!isNil "pause_between_dust_storm")};
//null = [340,my_dust_storm_duration,false,false,false] execvm "AL_dust_storm\al_duststorm.sqf";
//sleep (my_dust_storm_duration + pause_between_dust_storm);
//};	