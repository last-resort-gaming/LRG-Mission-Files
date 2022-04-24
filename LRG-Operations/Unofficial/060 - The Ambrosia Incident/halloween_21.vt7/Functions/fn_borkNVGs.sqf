params ["_bork"];

if (_bork) then {

	if (LR_NVGsBorked) exitWith {};

	LR_NVGsBorked = true;

	//systemChat "NVGs Borked!";

	_nul = [] spawn {

		if ((currentVisionMode player) == 1) then {
			LR_nvgBorkHandle = ppEffectCreate ["ColorCorrections", 2012];
			LR_nvgBorkHandle ppEffectForceInNVG true;
			LR_nvgBorkHandle ppEffectEnable true;
			LR_nvgBorkHandle ppEffectAdjust [1, 0.05, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 1]];
			LR_nvgBorkHandle ppEffectCommit 15;
		};
	};
};

if (not _bork) then {

	if (not LR_NVGsBorked) exitWith {};

	LR_NVGsBorked = false;

	//systemChat "NVGs unborked!";

	_nul = [] spawn {

		LR_nvgBorkHandle ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 1]];
		LR_nvgBorkHandle ppEffectCommit 1;
		sleep 2;
		LR_nvgBorkHandle ppEffectEnable false;
		ppEffectDestroy LR_nvgBorkHandle;
	};
};