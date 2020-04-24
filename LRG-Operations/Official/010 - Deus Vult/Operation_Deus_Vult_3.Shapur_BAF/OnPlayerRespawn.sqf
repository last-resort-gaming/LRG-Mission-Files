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
	player addAction ["<t color='#27e833'>Mission Complete</t>",{"EveryoneWon" remoteExec ["BIS_fnc_endMissionServer", 2];},nil,-97,false,true];	
	player addAction ["<t color='#cc3232'>Mission Failed</t>",{"EveryoneLost" remoteExec ["BIS_fnc_endMissionServer", 2];},nil,-98,false,true];	
	};
