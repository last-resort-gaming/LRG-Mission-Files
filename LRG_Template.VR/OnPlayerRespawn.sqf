/*
	LRG MISSION TEMPLATE
	OnPlayerRespawn.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;


if (MissionType == "VANILLA") then {

If (StandardEarplugs) then {[] execVM "scripts\earplugs.sqf";};
if (!EnableVanillaFatigue) then {player enableFatigue false;};

};