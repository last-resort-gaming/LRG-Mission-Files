#include "..\defines.inc"
FIX_LINE_NUMBERS()
#include "\a3\ui_f\hpp\definedikcodes.inc"

params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];

private _handled = false;

switch (_key) do {
	case DIK_R: {
		(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu];
		player spawn A3A_fnc_respawn;
	};
	case DIK_T: {
		private _nearFriendlyUnits = [] call SCRT_fnc_common_getNearFriendlyAiUnits;
		if (_nearFriendlyUnits isNotEqualTo []) then {
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu];
			[_nearFriendlyUnits] spawn SCRT_fnc_common_possessNearestFriendlyAI;
		};
	};
#if __A3_DEBUG__
	case DIK_Q: {
		player setVariable ["incapacitated",false,true]; 
		player setDamage 0;
	};
#endif
};

_handled;