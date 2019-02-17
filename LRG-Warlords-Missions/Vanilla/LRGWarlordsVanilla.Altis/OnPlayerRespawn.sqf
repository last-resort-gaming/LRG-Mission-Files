/*
	LRG MISSION TEMPLATE
	OnPlayerRespawn.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;


[] execVM "scripts\YAINA\earplugs.sqf";
player addAction ["Repack Magazines", "player spawn QS_fnc_clientRepackMagazines","",-98,false,true];

player call LRG_fnc_Loadouts;