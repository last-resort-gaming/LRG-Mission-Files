if (isDedicated) exitWith {};
if (not canSuspend) exitWith {_this spawn LR_Sec_fnc_flickerFlashlight;};

_baseAmount = 3;
_rndAmount = floor (random [1, 4, 10]);
_amount = _baseAmount + _rndAmount;

_baseDuration = 0.5;
_fnc_rndDuration = {random [0.2, 1, 2.5]};

for "_i" from 0 to _rndAmount do {
	player action ["GunLightOff", player];
	_rndDuration = call _fnc_rndDuration;
	sleep (_baseDuration + _rndDuration);
	player action ["GunLightOn", player];
};