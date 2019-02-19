/*
	LRG MISSION TEMPLATE
	OnPlayerRespawn.sqf
	Author: MitchJC, Matth
	Description: Scripts executed when a player respawns.
*/
player addAction ["Repack Magazines", "player spawn QS_fnc_clientRepackMagazines","",-98,false,true];

player call LRG_fnc_Loadouts;