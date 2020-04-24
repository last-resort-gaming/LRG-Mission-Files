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

_RespawnHeight = 0;
player setPosASL [getPosASL player select 0, getPosASL player select 1, _RespawnHeight]; 

call LR_fnc_PlayerAddActions;