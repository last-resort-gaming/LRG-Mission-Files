if ((!isServer) && (player != player)) then {waitUntil {player == player};};

titleText ["Operation Black Tide - Part 2", "BLACK FADED", 0.0];

//Dust Storm
// for more info on script' paramaters check out ini_dust_storm.sqf
//null = [340,400,false,true,false,0.1] execvm "AL_dust_storm\al_duststorm.sqf";



while {true} do {
null = [10,400+(random 100),flase,true,false,0.1] execvm "AL_dust_storm\al_duststorm.sqf";
sleep 1200 + (random 1200); // delay between storms, it must be longer than storm duration
};