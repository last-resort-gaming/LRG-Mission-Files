/*
	LRG MISSION TEMPLATE
	Init.sqf
	Author: MitchJC
	Description: Scripts executed on player and server.
*/

enableSaving [false, false];

[] execVM "scripts\code34\real_weather.sqf";

CHVD_allowNoGrass = True;
CHVD_maxView = 		7000;
CHVD_maxObj = 		7000; 	