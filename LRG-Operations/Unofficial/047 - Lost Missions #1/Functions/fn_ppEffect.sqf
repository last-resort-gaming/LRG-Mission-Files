if (!canSuspend) exitWith {_this spawn LR_Sec_fnc_ppEffect};

params ["_name", "_priority", "_effect", "_duration", ["_commitDuration", 0]];

private _handle = -1;

while {
	_handle = ppEffectCreate [_name, _priority];
	_handle < 0
} do {
	_priority = _priority + 1;
};

_handle ppEffectEnable true;
_handle ppEffectAdjust _effect;
_handle ppEffectCommit _commitDuration;

waitUntil {ppEffectCommitted _handle};
uiSleep _duration;
_handle ppEffectEnable false;
ppEffectDestroy _handle;