// by ALIAS
// Tutorial: https://www.youtube.com/user/aliascartoons
// nul = [delay_thunder_1,delay_thunder_2,delay_thunder_3,raindrops,storm_debris,local_fog,screen_effect,puddles] execVM "ALthunder\alias_thunderbolt.sqf";

if (!isServer) exitWith {};

_type1_detect	= _this select 0;
_type2_detect	= _this select 1;
_type3_detect	= _this select 2;
_rain_drops	= _this select 3;
_wind_debris	= _this select 4;
_local_fog	= _this select 5;
_screen_effect	= _this select 6;
_puddles	= _this select 7;


if ((_rain_drops)or(_wind_debris)or(_local_fog)) then {
if (_rain_drops) then {alias_rain_drops = true; publicVariable "alias_rain_drops";} else {alias_rain_drops = false; publicVariable "alias_rain_drops";};
if (_wind_debris) then {alias_wind_debris = true; publicVariable "alias_wind_debris";} else {alias_wind_debris = false; publicVariable "alias_wind_debris";};
if (_local_fog) then {alias_local_fog = true; publicVariable "alias_local_fog";} else {alias_local_fog = false; publicVariable "alias_local_fog";};
[[],"ALthunder\alias_weather_effect.sqf"] remoteExec ["execVM",0,true];
};

if (_screen_effect != "none") then {
	[[_screen_effect],"ALthunder\splash.sqf"] remoteExec ["execVM",0,true];
};
