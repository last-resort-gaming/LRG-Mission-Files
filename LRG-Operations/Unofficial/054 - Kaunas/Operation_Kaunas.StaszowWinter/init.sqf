if ((!isServer) && (player != player)) then {waitUntil {player == player};};

// Snow Storm
//"_snowfall","_duration_storm","_ambient_sounds_al","_breath_vapors","_snow_burst","_effect_on_objects","_vanilla_fog","_local_fog","_intensifywind","_unitsneeze"
[true,           6000,                15,                    false,           10,             false, 			true,         true,        false,          true] execvm "AL_snowstorm\al_snow.sqf";