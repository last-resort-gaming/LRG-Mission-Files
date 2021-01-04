_cc_priority = 1500;
_ca_priority = 200;

_cc_default = [1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 1], [0.299, 0.587, 0.114, 0], [-1, -1, 0, 0, 0, 0, 0]];
_cc_applied = [1, 0.4, 0, [0, 0, 0, 0], [1, 1, 1, 0], [1, 1, 1, 0]];

_ca_default = [0, 0, false];
_ca_applied = [0.05, 0.05, true];

private ["_cc_handle", "_ca_handle"];

while {
	_cc_handle = ppEffectCreate ["ColorCorrections", _cc_priority];
	_cc_handle < 0
} do {
	_cc_priority = _cc_priority + 1;
};

while {
	_ca_handle = ppEffectCreate ["ChromAberration", _ca_priority];
	_ca_handle < 0
} do {
	_ca_priority = _ca_priority + 1;
};

_cc_handle ppEffectEnable true;
_cc_handle ppEffectAdjust _cc_applied;
_cc_handle ppEffectCommit 15;

_ca_handle ppEffectEnable true;
_ca_handle ppEffectAdjust _ca_applied;
_ca_handle ppEffectCommit 15;

waitUntil {(ppEffectCommitted _cc_handle) && (ppEffectCommitted _ca_handle)};

uiSleep 10;

_cc_handle ppEffectAdjust _cc_default;
_cc_handle ppEffectCommit 5;

_ca_handle ppEffectAdjust _ca_default;
_ca_handle ppEffectCommit 5;

waitUntil {(ppEffectCommitted _cc_handle) && (ppEffectCommitted _ca_handle)};

_cc_handle ppEffectEnable false;
ppEffectDestroy _cc_handle;

_ca_handle ppEffectEnable false;
ppEffectDestroy _ca_handle;