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
VehicleCrewList = 	True;						// DEFAULT: True					Show crew manifest. True to show, false to hide.
ShowMapIcons = 		True;						// DEFAULT: True					Show player tracker on map. True to enable, false to disable.

//================= Safe Zone
safezoneEnabled = 	True; 						// Default: True					No shooting at base. True is ON, false is OFF.
safezoneArea = 	150; 							// Default: 150m					No shooting at base distance in meters².

//================= View Distance
CHVD_allowNoGrass = True; 						// DEFAULT: True.					True = allow grass to be hidden.
CHVD_maxView = 		12000; 						// DEFAULT: 12000					Set maximum player view distance in meters.
CHVD_maxObj = 		12000; 						// DEFAULT: 12000					Set maximum player object distance in meters.

//================= Arsenal
ArsenalLoadSave = 	False;						// DEFAULT: False					Allow Load/Save in the Arsenal/AmmoBox.

//================= Dynamic Weather
EnableDynamicWeather = 	True;					// DEFAULT: True					Random Weather. True to enable, false to disable.
StartingWeather = "RANDOM";						// DEFAULT: "RANDOM"				Can be "CLEAR", "CLOUDY", "RAIN" or "RANDOM".

//================= TFAR ONLY Settings
RadioRange = 		2.5;						// DEFAULT: 2.5						Radio Range Multiplier.
LR1 = 	"30";									// DEFAULT: "30"					Platoon Net. 				Range: 30 - 87MHz
LR2 = 	"40";									// DEFAULT: "40"					Command Net. 				Range: 30 - 87MHz
LR3 = 	"50";									// DEFAULT: "50"					Pilot Net. 					Range: 30 - 87MHz
LR4 = 	"60";									// DEFAULT: "60"					FAC Net. 					Range: 30 - 87MHz
LR0 = 	"82";									// DEFAULT: "82"					Empty Channel Frequency. 	Range: 30 - 87MHz

EnableSideChat = True;							// DEFAULT: True					Enable Temp Side chat use for map drawing
SideChatDuration = 60;							// DEFAULT: "60"					How Long SideChat is active for SideChatGroups,
												// 									set to -1 to make it permanent.
SideChatGroups = ["Command", "909EAW"];			// DEFAULT: "Command", "909EAW"		Groups that use SideChat on the map.
												// 									"Command","1Section","2Section",
												// 									"3Section","909EAW","Recce"
											
//==================================================================================//
//=============================== FINAL CONFIRMATION ===============================//
//==================================================================================//

Confirmation =		False;						// DEFAULT: False					Set to True!!!
