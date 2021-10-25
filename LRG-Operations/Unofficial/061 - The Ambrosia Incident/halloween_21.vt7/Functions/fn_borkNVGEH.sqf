params ["_unit", "_visionMode"];

if (LR_NVGsBorked && (_visionMode != 1)) exitWith {
	_nul = [] spawn {
		LR_nvgBorkHandle ppEffectEnable false;
		ppEffectDestroy LR_nvgBorkHandle;
	};
};

if (LR_NVGsBorked && (_visionMode == 1)) then {
	_nul = [] spawn {
		LR_nvgBorkHandle = ppEffectCreate ["ColorCorrections", 2012];
		LR_nvgBorkHandle ppEffectForceInNVG true;
		LR_nvgBorkHandle ppEffectEnable true;
		LR_nvgBorkHandle ppEffectAdjust [1, 0.05, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 1]];
		LR_nvgBorkHandle ppEffectCommit 0;
	};
};