/*
MCTemp
Name: onPlayerRespawn.SQF
Author: Matth
Use: Executed locally when player respawns in a multiplayer mission. 
	 This event script will also fire at the beginning of a mission 
	 if respawnOnStart is 0 or 1, oldUnit will be objNull in this 
	 instance. This script will not fire at mission start if 
	 respawnOnStart equals -1.
*/
// ---------------------------------------------------------------------
// Setup Execution. No change needed.

// Correctly Set loadout
[player, [missionNamespace, "saved_loadout"]] call BIS_fnc_loadInventory;

// ---------------------------------------------------------------------
// Add respawns back to Zeus
if (addAllUnits isEqualTo TRUE) then {{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;};

//Disable stamina depending on conditions.
if (disableStamina isEqualTo TRUE) then {player enableFatigue False;};