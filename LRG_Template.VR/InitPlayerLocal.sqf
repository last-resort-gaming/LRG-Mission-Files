/*
	LRG MISSION TEMPLATE
	InitPlayerLocal.sqf
	Author: MitchJC
	Description: Scripts executed on players only.
*/

if (!hasInterface) exitWith {};


//=================================== GENERAL =====================================================

	if (VehicleCrewList) 	then {_null = [] execVM "scripts\LRG\crew\crew.sqf";};
	if (PilotCheck) 		then {_null = [] execVM "scripts\LRG\pilotCheck.sqf";};
	if (ShowMapIcons) 		then {_null = [] execVM "scripts\QS\QS_icons.sqf";};
	If (!Confirmation)		then {call LR_fnc_Confirmation;};
	
	if (safezoneEnabled)	then {call LR_fnc_SafeZone;};
	if (!ArsenalLoadSave)	then {call LR_fnc_ArsenalLoadSave;};
	

	if !(isClass (configFile >> "CfgPatches" >> "ace_main")) then {
		[] execVM "scripts\YAINA\earplugs.sqf";
		["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
		player enableFatigue false;
	};
	  
	if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
		player setVariable ["tf_sendingDistanceMultiplicator", RadioRange];
	};	  