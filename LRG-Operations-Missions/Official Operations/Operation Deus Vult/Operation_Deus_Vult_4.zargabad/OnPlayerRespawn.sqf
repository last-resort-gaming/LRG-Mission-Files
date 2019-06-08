/*
	LRG MISSION TEMPLATE
	OnPlayerRespawn.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;

if !(isClass (configFile >> "CfgPatches" >> "ace_main")) then {
		[] execVM "scripts\earplugs.sqf";
		player enableFatigue false;
};

_RespawnHeight = 19;
player setPosASL [getPosASL player select 0, getPosASL player select 1, _RespawnHeight]; 

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
