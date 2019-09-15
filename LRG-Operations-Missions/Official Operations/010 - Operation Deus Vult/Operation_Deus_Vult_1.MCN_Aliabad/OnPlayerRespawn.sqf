/*
	LRG MISSION TEMPLATE
	OnPlayerRespawn.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/
_RespawnHeight = 19;
player setPosASL [getPosASL player select 0, getPosASL player select 1, _RespawnHeight];

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;

if !(isClass (configFile >> "CfgPatches" >> "ace_main")) then {
		[] execVM "scripts\earplugs.sqf";
		player enableFatigue false;
};