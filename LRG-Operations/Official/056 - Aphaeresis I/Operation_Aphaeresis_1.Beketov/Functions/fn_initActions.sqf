[
    "StartAphaeresis",
    "<t color='#00ff00'>Start Aphaeresis</t>",
    "",
    {
		[[], LR_Aph_fnc_startAphaeresis] remoteExec ["spawn", 0];
	},
    {true}
] call LR_fnc_AddCreatorAction;

[
    "PPEffects",
    "<t color='#ffdc4f'>Post-processing Fx</t>",
    "",
    {
		[[], LR_Aph_fnc_postprocessing] remoteExec ["spawn", 0];
	},
    {true}
] call LR_fnc_AddCreatorAction;