if (!isServer) exitWith {};

"short_glitch_7" remoteExec ["playMusic", 0];
remoteExec ["LR_Sec_fnc_disCarGlitch", 0];

[playerCar, ["motor", 1]] remoteExec ["setHit", playerCar];
[playerCar, ["fuel_tank", 1]] remoteExec ["setHit", playerCar];

[playerCar, false] remoteExec ["engineOn", playerCar];
