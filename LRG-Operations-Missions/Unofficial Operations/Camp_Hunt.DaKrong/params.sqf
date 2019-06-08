
[] execVM "compositionspawn.sqf";

[] execVM "scripts\randomz.sqf";


////////////////// Parameters
	for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do
	{
		call compile format
		[
			"PARAMS_%1 = %2",
			(configName ((missionConfigFile >> "Params") select _i)),
			(paramsArray select _i)
		];
	};

if (PARAMS_SAVES == 0) then {enableSaving [false, false];};
if (PARAMS_SAVES == 1) then {enableSaving [true, false];};
if (PARAMS_MAGREPACK == 1) then {null = [] execVM "outlw_magRepack\MagRepack_init_sv.sqf";};
if (PARAMS_AIrecruit == 1) then {null = [] execVM "bon_recruit_units\init.sqf"; barracks addAction["<t color='#ff9900'>Recruit Infantry</t>", "bon_recruit_units\open_dialog.sqf"];};
if (PARAMS_G_revive == 1) then {null = 
[] execVM "G_Revive_init.sqf"};
if (PARAMS_Icons_map == 1) then {null = [] execVM "scripts\QS_icons.sqf"};
