playMusic "LeadTrack03_F_Tank";

sleep 22;

[parseText "<t font='PuristaBold' size='2'>Aphaeresis I: Genesis</t><br />by Mokka", true, nil, 10, 1, 0] spawn BIS_fnc_textTiles;

sleep 30;

[["'Each has his own task,",1,2,3],["and nobody is dispensable'",1,4,3],["- Chinese Proverb",1,2,6]] spawn BIS_fnc_EXP_camp_SITREP;

sleep 30;

["Beketov District", ""] call LR_Aph_fnc_sitrep;