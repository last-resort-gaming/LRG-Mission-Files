["ColorInversion", 2500, [0.01, 0.01, 0.01], 1.5] spawn LR_Sec_fnc_ppEffect;
["ChromAberration", 200, [0.5, 0.5, true], 1.5] spawn LR_Sec_fnc_ppEffect;

_sound = selectRandom ["short_glitch_1", "short_glitch_2", "short_glitch_3", "short_glitch_4"];

playSound _sound;