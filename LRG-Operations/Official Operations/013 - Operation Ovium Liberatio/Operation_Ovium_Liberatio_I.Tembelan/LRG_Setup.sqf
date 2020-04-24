/*
LRG MISSION TEMPLATE
LRG_Setup.sqf
Author: MitchJC
Description: Used to configure LRG missions prior to booting.
Automatically created by the LRG_Setup.sqf generator on2018-07-29, 09:19:11am

*/

//==================================================================================//
//=================================== SETTINGS =====================================//
//==================================================================================//

//================= Basic Stuff
VehicleCrewList = True;
ShowMapIcons = True;

//================= Safe Zone
safeZoneEnabled = True;
safeZoneArea = 200;

//================= View Distance (CHVD)
CHVD_allowNoGrass = True;
CHVD_maxView = 12000;
CHVD_maxObj = 12000;

//================= Arsenal
ArsenalLoadSave = False;

//================= Dynamic Weather
EnableDynamicWeather = True;
StartingWeather = "CLEAR";

//================= TFAR ONLY Settings
RadioRange = 2.5;
LR1 = "30";
LR2 = "40";
LR3 = "50";
LR4 = "60";
LR0 = "82";

EnableSideChat = True;
SideChatDuration = 60;
SideChatGroups = [] + ["Command"] + ["909 EAW"];

//==================================================================================//
//=============================== FINAL CONFIRMATION ===============================//
//==================================================================================//

Confirmation =	True;