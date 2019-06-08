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
	} else {
	1 enableChannel [true, true];
	2 enableChannel [true, true];
	3 enableChannel [true, true];
	4 enableChannel [true, true];
	5 enableChannel [true, true];
	};

	if (player getUnitTrait "Mission Maker") then {
	
	player addAction ["<t color='#27e833'>Mission Complete</t>",{"EveryoneWon" remoteExec ["BIS_fnc_endMissionServer", 2];},nil,-97,false,true];	
	player addAction ["<t color='#cc3232'>Mission Failed</t>",{"EveryoneLost" remoteExec ["BIS_fnc_endMissionServer", 2];},nil,-98,false,true];
			
	};

	if (A3Logs_Active) then {
	
	_log = format ["%1 attended as %2.",name player, roleDescription player ];	
	[_log,"LRG_CONNECTLOG"] remoteExecCall ["A3Log", 2];
	
	};