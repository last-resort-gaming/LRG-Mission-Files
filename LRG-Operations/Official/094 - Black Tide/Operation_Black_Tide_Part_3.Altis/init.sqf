if ((!isServer) && (player != player)) then {waitUntil {player == player};};

titleText ["Operation Black Tide - Part 3", "BLACK FADED", 0.0];

setViewDistance 2000;

// Snow Storm
//"_snowfall","_duration_storm","_ambient_sounds_al","_breath_vapors","_snow_burst","_effect_on_objects","_vanilla_fog","_local_fog","_intensifywind","_unitsneeze"
[true,           7200,                15,                    false,           10,             false, 			true,         true,        false,          true] execvm "AL_snowstorm\al_snow.sqf";