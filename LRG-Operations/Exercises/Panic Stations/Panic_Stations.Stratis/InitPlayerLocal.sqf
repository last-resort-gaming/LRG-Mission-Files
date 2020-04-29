/*
	LRG MISSION TEMPLATE
	InitPlayerLocal.sqf
	Author: MitchJC
	Description: Scripts executed on players only.
*/

if (!hasInterface) exitWith {};

//=================================== GENERAL =====================================================

	if (PilotCheck) 		then {_null = [] execVM "scripts\LRG\pilotCheck.sqf";};
	if (ShowMapIcons) 		then {_null = [] execVM "scripts\QS\QS_icons.sqf";};
	If (!Confirmation)		then {call LR_fnc_Confirmation;};
	
	if (safezoneEnabled)	then {call LR_fnc_SafeZone;};
	if (!ArsenalLoadSave)	then {call LR_fnc_ArsenalLoadSave;};
	

	if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
		call LR_fnc_SideChat;
		} else {
	
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
	
[player,
"<t color='#27e833'>Mission Complete</t>",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsUp_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsUp_ca.paa",
"true",
"true",
{ hint "You're Completing the Mission." },
{},
{"EveryoneWon" remoteExec ["BIS_fnc_endMissionServer", 2];},
{ hint "You've Cancelled Mission Completion." },
[],
5,
-96,
true,
false] call BIS_fnc_holdActionAdd;

[player,
"<t color='#cc3232'>Mission Failed</t>",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsDown_ca.paa",
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsDown_ca.paa",
"true",
"true",
{ hint "You're Failing the Mission." },
{},
{"EveryoneLost" remoteExec ["BIS_fnc_endMissionServer", 2];},
{ hint "You've Cancelled Mission Failure." },
[],
5,
-96,
true,
false] call BIS_fnc_holdActionAdd;		
	};

	if (servername == "[LRG] Last Resort Gaming || EU 3 || Operations") then {
	
	_log = format ["%1 attended as %2.",name player, roleDescription player ];	
	[_log,"LRG_CONNECTLOG"] remoteExecCall ["A3Log", 2];
	
	};
