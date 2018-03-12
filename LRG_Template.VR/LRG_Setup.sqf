/*
	LRG MISSION TEMPLATE
	LRG_Setup.sqf
	Author: MitchJC
	Description: Used to configure LRG missions prior to booting.
*/

//==============================================================================================================================//
//==============================================================================================================================//
//============================================= LRG MISSION TEMPLATE USER SETUP ================================================//
//==============================================================================================================================//
//==============================================================================================================================//


//==================================================================================//
//================================ GENERAL SETTINGS ================================//
//==================================================================================//

//================= Mission Type
MissionType = 		"ACE";						// Mission Type can be "ACE" or "VANILLA"							DEFAULT: "ACE"

//================= Basic Stuff
VehicleCrewList = 	True;						// Show crew manifest. True to show, false to hide. 				DEFAULT: True
PilotCheck = 		True;						// Only Pilots allowed to fly. True to enable, false to disable. 	DEFAULT: True
ShowMapIcons = 		True;						// Show player tracker on map. True to enable, false to disable. 	DEFAULT: True
DynamicWeather = 	True;						// Random Weather. True to enable, false to disable. 				DEFAULT: True

//================= Safe Zone
safezoneEnabled = 	True; 						// No shooting at base. True is ON, false is OFF. 					Default: True
safezoneDistance = 	150; 						// No shooting at base distance in meters. 							Default: 150m

//================= View Distance
CHVD_allowNoGrass = True; 						// true = allow grass to be hidden.									DEFAULT: True.
CHVD_maxView = 		12000; 						// Set maximum player view distance in meters. 						DEFAULT: 12000
CHVD_maxObj = 		12000; 						// Set maximum player object distance in meters. 					DEFAULT: 12000

//================= Arsenal
EnableArsenal = 	True;						// Enable Default LRG Arsenal. True to enable, false to disable. 	DEFAULT: True.
ArsenalType = 		"3CB";						// Default Arsenal Setup can be "VANILLA","3CB" or "RHS" 			DEFAULT: "3CB"
ArsenalName = 		["Box1"];					// Variable Name of Arsenal.										DEFAULT: "Box1"
TimedArsenal = 		True;						// Remove the Arsenal after 'ArsenalExpiry'.						DEFAULT: True
ArsenalExpiry = 	50;							// How long in minutes from server start to remove the Arsenal. 	DEFAULT: 50mins
ArsenalLoadSave = 	False;						// Allow Load/Save in the Arsenal/AmmoBox. 							DEFAULT: False

//================= Ammo Boxes
EnableAmmoBox = 	True;						// Enable predefined Ammo box based on ArsenalType. 				DEFAULT: True
AmmoBoxName = 		["Ammo1","Ammo2"];			// Variable Name of Ammo Boxes.										DEAFULT: "Ammo1","Ammo2"


//==================================================================================//
//================================ ACE ONLY SETTINGS ===============================//
//=================== Settings ignored unless MissionType = "ACE"; =================//
//==================================================================================//

//================= TFAR Settings
RadioRange = 		1.5;						// Radio Range Multiplier.								DEFAULT: 1.5.
LRFrequency_1 = 	"30";						// Platoon Net. Range: 30 - 87MHz						DEFAULT: "30"
LRFrequency_2 = 	"40";						// Command Net. Range: 30 - 87MHz						DEFAULT: "40"
LRFrequency_3 = 	"50";						// Pilot Net. 	Range: 30 - 87MHz						DEFAULT: "50"
LRFrequency_4 = 	"60";						// FAC Net. 	Range: 30 - 87MHz						DEFAULT: "60"
LREmptyFrequency = 	"82";						// Empty Channel Frequency. Range: 30 - 87MHz			DEFAULT: "82"

//================= ACE Settings
EnableLRGMedFacility = True;					// Enable use of auto heal/revive at Med Facilities.	DEFAULT: True
LRGMedicalFacilities = ["MedicalFacility1"];	// Name of Medical Facilities.							DEFAULT: "MedicalFacility1"
//======================================================================================//
//================================ VANILLA ONLY SETTINGS ===============================//
//=================== Settings ignored unless MissionType = "VANILLA"; ================//
//====================================================================================//

//================= Basic Vanilla Settings
StandardEarplugs = 			True;				// Enable EU1 style Earplugs. 							DEFAULT: True.
VanillaGroupManagement = 	True;				// Enable Default Group Management. 					DEFAULT: True.
EnableVanillaFatigue = 		False;				// Enable BIS Fatigue.  								DEFAULT: False.

//==================================================================================//
//=============================== FINAL CONFIRMATION ===============================//
//==================================================================================//

Confirmation =		False;						// Set to TRUE!!! 										DEFAULT: False.
