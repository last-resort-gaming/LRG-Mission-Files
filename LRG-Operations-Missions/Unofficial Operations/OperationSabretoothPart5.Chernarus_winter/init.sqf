
tawvd_disablenone = true;
tawvd_maxRange = 10000;

_null = [] execVM "eos\OpenMe.sqf";
_null = [] execVM "cos\cosInit.sqf";
_null = [] execVM "scripts\zeusupdater.sqf";
_null = [] execVM "functions\fn_advancedSlingLoadingInit.sqf";
adminCurators = allCurators;

ASL_SUPPORTED_VEHICLES_OVERRIDE = ["kyo_CH47_HC3"];