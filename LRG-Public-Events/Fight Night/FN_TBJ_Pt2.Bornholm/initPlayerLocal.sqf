/*
MCTemp
Name: initPlayerLocal.ext
Author: Matth
Use: Executed locally when player joins mission (includes both mission start and JIP). 
	 See initialization order for details about when the script is exactly executed.
*/
//Delay to fix fast load. Possibly remove in future.
sleep 0.1;

// ---------------------------------------------------------------------
// Setup Execution. No change needed.

waitUntil {setupComplete isEqualTo TRUE};
if (aceEnabled isEqualTo FALSE) then {
	//Vanilla Functions
	if (earplugsEnable isEqualTo TRUE) then {player execVM "scripts\earplugs.sqf";};
	if (enableIcons isEqualTo true) then {[] execVM "scripts\QS_icons.sqf";};
} else {
	//ACE Functions
};

// Save Loadout for restoration
[player, [missionNamespace, "saved_loadout"]] call BIS_fnc_saveInventory;

//Disable stamina depending on conditions.
if (disableStamina isEqualTo TRUE) then {player enableFatigue False;};

//Disable Arsenal Saving and Loading
if (arsenaSAL isEqualTo FALSE) then {
	[ missionNamespace, "arsenalOpened", {
		disableSerialization;
		_display = _this select 0;
		{
			( _display displayCtrl _x ) ctrlSetText "Disabled";
			( _display displayCtrl _x ) ctrlSetTextColor [ 1, 0, 0, 0.5 ];
			( _display displayCtrl _x ) ctrlRemoveAllEventHandlers "buttonclick";
		}forEach [ 44146, 44147 ];
	} ] call BIS_fnc_addScriptedEventHandler;
};