if ((!isServer) && (player != player)) then {waitUntil {player == player};};

titleText ["Dust Storm Script DEMO", "BLACK FADED", 0.2];

[] execVM "briefing.sqf";

//Dust Storm
// for more info on script' paramaters check out ini_dust_storm.sqf
//null = [340,1600,false,true,false,0.3] execvm "AL_dust_storm\al_duststorm.sqf";



while {true} do {
null = [10,300+(random 600),false,true,true,0.1] execvm "AL_dust_storm\al_duststorm.sqf";
sleep 1200 + (random 1200); // delay between storms, it must be longer than storm duration
};