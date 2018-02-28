/*
	LRG MISSION TEMPLATE
	LRG_Setup.sqf
	Author: MitchJC

*/

//=================================== LRG MISSION TEMPLATE USER SETUP =====================================================

VehicleCrewList = True;						// Show crew manifest. True to show, false to hide. DEFAULT: True.
PilotCheck = True;							// Only Pilots allowed to fly. True to enable, false to disable. DEFAULT: True.
ShowMapIcons = True;						// Show player tracker on map. True to enable, false to disable. DEFAULT: True.
RadioRange = 1.5;							// Radio Range Multiplier. 2 = double radio range, 0.5 = half radio range, ect. DEFAULT: 1.5.
safezoneEnabled = True; 					// No shooting at base. True is ON, false is OFF. Default: True.
safezoneDistance = 150; 					// No shooting at base distance in meters. Default: 150m.
DynamicWeather = True;						// Random Weather. True to enable, false to disable. DEFAULT: True.

TFAR_ON_Message = True;						// Announce TFAR ON message. True to enable, false to disable. DEFAULT: True.
TFAR_Message_Time = 55;						// Time to TFAR ON message in Minutes. DEFAULT: 55mins.

EnableArsenal = True;						// Enable Default LRG 3CB Arsenal. True to enable, false to disable. DEFAULT: True.
ArsenalLoadSave = False;					// Allow loading and saving in the Arsenal and AmmoBox. True to allow, False to disable. DEFAULT: False.
ArsenalName = ["Box1"];						// Variable Name of Arsenal Boxes. Ignored if EnableArsenal = False.
TimedArsenal = True;						// Remove the Arsenal after 'ArsenalExpiry'. True to enable, false to disable. DEFAULT: True.
ArsenalExpiry = 50;							// How long in minutes from server start to remove the Arsenal. DEFAULT: 50mins

EnableAmmoBox = True;						// Enable Default LRG 3CB Section Ammo Boxes. Tue to enable, false to disable. DEFAULT: True.
AmmoBoxName = ["Ammo1","Ammo2","Ammo3"];	// Variable Name of Ammo Boxes. Ignored if EnableAmmoBox = false.

CHVD_allowNoGrass = True; 					// true = allow grass to be hidden, false = grass cannot be hidden. DEFAULT: True.
CHVD_maxView = 12000; 						// Set maximum player view distance in meters. DEFAULT: 12000.
CHVD_maxObj = 12000; 						// Set maximum player object distance in meters. DEFAULT: 12000.

Confirmation = False;						// Set to True once you've finished all these settings. DEFAULT: False.