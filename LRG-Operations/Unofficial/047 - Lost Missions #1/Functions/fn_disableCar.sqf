if (!isServer) exitWith {};

"short_glitch_7" remoteExec ["playMusic", 0];
remoteExec ["LR_Sec_fnc_disCarGlitch", 0];

playerCar setHit ["motor", 1];
playerCar setHit ["fuel_tank", 1];

playerCar engineOn false;
