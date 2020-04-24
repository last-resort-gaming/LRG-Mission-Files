/*
MCTemp
Name: setup.SQF
Author: Matth
Use: For the Mission Maker to choose Scripts and Function to Enable
*/
// ---------------------------------------------------------------------
// General Functions

//CHVD - CH View Distance Script

CHVD_allowNoGrass = true; // Set 'false' if you want to disable "None" option for terrain (default: true)
CHVD_maxView = 2500; // Set maximum view distance (default: 12000)
CHVD_maxObj = 2500; // Set maximimum object view distance (default: 12000)

// QS_Icons - Soldier Tracker (Map and GPS Icons / Markers) - More Advanced changeble settings availble in the script.
enableIcons = TRUE; // Default = TRUE. Disables and enables tracking script.

//unitAdder
addAllUnits = TRUE; // Default = TRUE. Adds all units to Zeus

// Respawn Equiptment - FIX CANNOT COPE WITH SUICIDE
respawnLoadout = 0; // Default = 0. 0 = Respawn with spawn loadout. 1 = Respawn with death loadout.

// Disable Arensal Saving and Loading
arsenaSAL = TRUE; // Default = TRUE. Disables saving and loading in arsenal if false.


// ---------------------------------------------------------------------
// Vanilla Scripts - Changes not needed if ACE in use.

earplugsEnable = TRUE; //Default = TRUE. Set to FALSE to disable earplugs.

// Disable Stamina
disableStamina = TRUE; // Default = FALSE. Set to true to disable stamina.

// ---------------------------------------------------------------------
// Completion - Do Not Change
setupComplete = TRUE;