/*
MCTemp
Name: onPlayerKilled.SQF
Author: Matth
Use: Executed when player is killed in singleplayer or in multiplayer mission.
*/
// ---------------------------------------------------------------------
// Setup Execution. No change needed.

// Save Loadout depending on Setup for respawn loadout. Overwrites the initial save.
if (respawnLoadout isEqualTo 1) then {[player, [missionNamespace, "saved_loadout"]] call BIS_fnc_saveInventory;};