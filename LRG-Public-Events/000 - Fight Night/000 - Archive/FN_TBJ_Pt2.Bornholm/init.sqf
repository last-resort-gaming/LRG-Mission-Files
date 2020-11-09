/*
MCTemp
Name: init.SQF
Author: Matth
Use: Executed when mission is started (before briefing screen)
*/
// ---------------------------------------------------------------------
// Create initial Global Variables
aceEnabled = FALSE;
setupComplete = FALSE;


// ---------------------------------------------------------------------
// Run the Setup
execVM "setup.SQF";

// ---------------------------------------------------------------------
// Set initial Global Variables

if (isClass(configFile >> "CfgPatches" >> "ace_main")) then {aceEnabled = TRUE;};

// ---------------------------------------------------------------------
// Useful Scripts for all missions. Suggested not to disable.

// ---------------------------------------------------------------------
// Setup Execution. No change needed.

waitUntil {setupComplete isEqualTo TRUE};
if (aceEnabled isEqualTo FALSE) then {
	//Vanilla Functions
	if (addAllUnits isEqualTo TRUE) then {execVM "scripts\unitAdder.SQF";};
} else {
	//ACE Functions
};

// ---------------------------------------------------------------------
// Misc

cycles = 0;