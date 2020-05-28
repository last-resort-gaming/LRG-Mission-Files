if (isDedicated) exitWith {};
if (not canSuspend) exitWith {_this spawn LR_Sec_fnc_killFlashlight};

params ["_duration"];

if ((_this select 0) == 100) then {
	// Permanent dead
	while {LR_flashlightsDead} do {
		waitUntil {player isFlashlightOn (currentWeapon player)};
		if (not LR_flashlightsDead) exitWith {};
		player action ["GunLightsOff", player];
	};
} else {

	_rndDuration = random [-10, 3, 15];
	_startTime = time;
	_endTime = _startTime + _duration + _rndDuration;

	while {time < _endTime} do {
		waitUntil {player isFlashlightOn (currentWeapon player)};
		if (time > _endTime) exitWith {};
		player action ["GunLightOff", player];
	};
};