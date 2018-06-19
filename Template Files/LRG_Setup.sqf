/*
	LRG MISSION TEMPLATE
	LRG_Setup.sqf
	Author: MitchJC
	Description: Used to configure LRG missions prior to booting.
*/

//==================================================================================//
//=================================== SETTINGS =====================================//
//==================================================================================//

//================= Basic Stuff
VehicleCrewList = 	True;						// Show crew manifest. True to show, false to hide. 				DEFAULT: True
PilotCheck = 		True;						// Only Pilots allowed to fly. True to enable, false to disable. 	DEFAULT: True
ShowMapIcons = 		True;						// Show player tracker on map. True to enable, false to disable. 	DEFAULT: True
DynamicWeather = 	True;						// Random Weather. True to enable, false to disable. 				DEFAULT: True

//================= Safe Zone
safezoneEnabled = 	True; 						// No shooting at base. True is ON, false is OFF. 					Default: True
safezoneDistance = 	150; 						// No shooting at base distance in meters. 							Default: 150m

//================= View Distance
CHVD_allowNoGrass = True; 						// True = allow grass to be hidden.									DEFAULT: True.
CHVD_maxView = 		12000; 						// Set maximum player view distance in meters. 						DEFAULT: 12000
CHVD_maxObj = 		12000; 						// Set maximum player object distance in meters. 					DEFAULT: 12000

//================= Arsenal
EnableArsenal = 	True;						// Enable Default LRG Arsenal. True to enable, false to disable. 	DEFAULT: True
ArsenalType = 		"3CB";						// Default Arsenal Setup can be "VANILLA","3CB" or "RHS" 			DEFAULT: "3CB"
ArsenalName = 		["Box1"];					// Variable Name of Arsenal.										DEFAULT: "Box1"
TimedArsenal = 		True;						// Remove the Arsenal after 'ArsenalDuration'.						DEFAULT: True
ArsenalDuration = 	50;							// How long in minutes from server start to remove the Arsenal. 	DEFAULT: 50
ArsenalLoadSave = 	False;						// Allow Load/Save in the Arsenal/AmmoBox. 							DEFAULT: False

//================= Ammo Boxes
EnableAmmoBox = 	True;						// Enable predefined Ammo box based on ArsenalType. 				DEFAULT: True
AmmoBoxName = 		["Ammo1", "Ammo2"];			// Variable Name of Ammo Boxes.										DEAFULT: "Ammo1", "Ammo2"

//================= TFAR ONLY Settings - Ignored when TFAR off.
RadioRange = 		1.5;						// Radio Range Multiplier.								DEFAULT: 1.5.
LR1 = 	"30";									// Platoon Net. Range: 30 - 87MHz						DEFAULT: "30"
LR2 = 	"40";									// Command Net. Range: 30 - 87MHz						DEFAULT: "40"
LR3 = 	"50";									// Pilot Net. 	Range: 30 - 87MHz						DEFAULT: "50"
LR4 = 	"60";									// FAC Net. 	Range: 30 - 87MHz						DEFAULT: "60"
LR0 = 	"82";									// Empty Channel Frequency. Range: 30 - 87MHz			DEFAULT: "82"

EnableSideChat = True;							// Enable Temp Side chat use for map drawing			DEFAULT: True
SideChatDuration = 60;							// How Long SideChat is active for below Groups			DEFAULT: "60"
SideChatGroups = ["Command", "909EAW"];			// Groups that use SideChat on the map.					DEFAULT: "Command", "909EAW"
												// "Command","1Section","2Section",
												// "3Section","909EAW","Recce"
												
//================= ACE ONLY Settings - Ignored when ACE off.
EnableLRGMedFacility = True;					// Enable use of auto heal/revive at Med Facilities.	DEFAULT: True
LRGMedicalFacilities = ["MedicalFacility1"];	// Name of Medical Facilities.							DEFAULT: "MedicalFacility1"

//==================================================================================//
//=============================== FINAL CONFIRMATION ===============================//
//==================================================================================//

Confirmation =		False;						// Set to True!!! 										DEFAULT: False
