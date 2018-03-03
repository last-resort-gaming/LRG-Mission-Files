

if (!hasInterface) exitWith {};


//=================================== GENERAL =====================================================

	if (VehicleCrewList) 	then {_null = [] execVM "scripts\vehicle\crew\crew.sqf";};
	if (PilotCheck) 		then {_null = [] execVM "scripts\pilotCheck.sqf";};
	if (ShowMapIcons) 		then {_null = [] execVM "scripts\misc\QS_icons.sqf";};

	if (safezoneEnabled)	then {call LR_fnc_SafeZone;};
	if (!ArsenalLoadSave)	then {call LR_fnc_ArsenalLoadSave;};
	
switch (MissionType) do {

    case "ACE": {player setVariable ["tf_sendingDistanceMultiplicator", RadioRange];};
	
    case "VANILLA": {
	
		if (StandardEarplugs) 		then {[] execVM "scripts\earplugs.sqf";};
		if (VanillaGroupManagement) then {["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;};
		if (!EnableVanillaFatigue) 	then {player enableFatigue false;};};
};

