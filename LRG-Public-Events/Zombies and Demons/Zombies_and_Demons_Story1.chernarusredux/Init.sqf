/*
	LRG MISSION TEMPLATE
	Init.sqf
	Author: MitchJC
	Description: Scripts executed on player and server.
*/

enableSaving [false, false];

if (DynamicWeather) then {[] execVM "scripts\code34\real_weather.sqf";};