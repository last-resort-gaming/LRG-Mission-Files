

enableSaving [false, false];

if (!hasInterface) exitWith {};


//=================================== GENERAL =====================================================

	if (VehicleCrewList) then {_null = [] execVM "scripts\vehicle\crew\crew.sqf";};
	if (PilotCheck) then {_null = [] execVM "scripts\pilotCheck.sqf";};
	if (ShowMapIcons) then {_null = [] execVM "scripts\misc\QS_icons.sqf";};


	if (safezoneEnabled) then {

	player addEventHandler["FiredMan", {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_mag", "_projectile", "_veh"];

    if (_weapon in ["CMFlareLauncher", "CMFlareLauncher_Singles", "CMFlareLauncher_Triples","UK3CB_BAF_CMFlareLauncher","UK3CB_BAF_IRJammer"])  exitWith {true};
    if !(cameraOn isEqualTo (vehicle player)) exitWith {true};

    _checkObject = [_veh, _unit] select isNull _veh;
	
	if (_checkObject distance2D (getMarkerPos "respawn_west") < safezoneDistance) exitWith {
		deleteVehicle _projectile;
		hintC "Denied.";
	}}];
	
	};

	if (!ArsenalLoadSave) then {
	[missionNamespace, "arsenalOpened", {
		disableSerialization;
		params ["_display"];
		_display displayAddEventHandler ["keydown", "_this select 3"];
		{(_display displayCtrl _x) ctrlShow false} forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
		}] call BIS_fnc_addScriptedEventHandler;
	};

	If (!Confirmation) then {

		_Config = format["<t size='2.5' align='center' color='#F52222'>CONFIGURATION</t><br/>____________________<br/><br/>You need to configure LRG_Setup.sqf"];
		[_Config] remoteExec ["LR_fnc_globalHint",0,false];
	
		};	
	

switch (MissionType) do {

    case "ACE": {player setVariable ["tf_sendingDistanceMultiplicator", RadioRange];};
	
    case "VANILLA": {
	
		if (StandardEarplugs) then {[] execVM "scripts\earplugs.sqf";};
	
		if (VanillaGroupManagement) then {["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;};
	
		if (!EnableVanillaFatigue) then {player enableFatigue false;};};
};

