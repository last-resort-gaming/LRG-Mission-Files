/*
LRG MISSION TEMPLATE
LRG_Setup.sqf
Author: MitchJC
Description: Used to configure LRG missions prior to booting.
Automatically created by the LRG_Setup.sqf generator on2018-10-27, 05:46:37pm

*/

//==================================================================================//
//=================================== SETTINGS =====================================//
//==================================================================================//

//================= Basic Stuff
VehicleCrewList = True;
ShowMapIcons = True;

//================= Safe Zone
safeZoneEnabled = False;
safeZoneArea = 150;

//================= View Distance (CHVD)
CHVD_allowNoGrass = True;
CHVD_maxView = 12000;
CHVD_maxObj = 12000;

//================= Arsenal
ArsenalLoadSave = False;

//================= Dynamic Weather
EnableDynamicWeather = False;
StartingWeather = "RANDOM";

//================= TFAR ONLY Settings
RadioRange = 2.5;
TerrainInterference = 1;

EnableSideChat = True;
SideChatDuration = 60;

onPostInit = "LR_Missions_fnc_initSandstorm01";

