

if (!hasInterface) exitWith {};


//=================================== GENERAL =====================================================

	if (VehicleCrewList) 	then {_null = [] execVM "scripts\LRG\crew\crew.sqf";};
	if (PilotCheck) 		then {_null = [] execVM "scripts\LRG\pilotCheck.sqf";};
	if (ShowMapIcons) 		then {_null = [] execVM "scripts\QS\QS_icons.sqf";};
	If (!Confirmation)		then {call LR_fnc_Confirmation;};
	
	if (safezoneEnabled)	then {call LR_fnc_SafeZone;};
	if (!ArsenalLoadSave)	then {call LR_fnc_ArsenalLoadSave;};
	
switch (MissionType) do {

    case "ACE": {player setVariable ["tf_sendingDistanceMultiplicator", RadioRange];};
	
    case "VANILLA": {
	
		if (StandardEarplugs) 		then {[] execVM "scripts\earplugs.sqf";};
		if (VanillaGroupManagement) then {["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;};
		if (!EnableVanillaFatigue) 	then {player enableFatigue false;};};
};

