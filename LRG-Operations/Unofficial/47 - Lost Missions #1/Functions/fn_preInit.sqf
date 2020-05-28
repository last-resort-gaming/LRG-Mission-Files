LR_MissionStarted = false;
LR_fullscreenNVMode = 0;

LR_Tasks_00_active = false;
LR_Tasks_01_active = false;
LR_Tasks_02_active = false;
LR_Tasks_03_active = false;
LR_Tasks_04_active = false;
LR_Tasks_05_active = false;
LR_Tasks_06_active = false;
LR_Tasks_07_active = false;
LR_Tasks_08_active = false;


LR_Tasks_01_ready = false;
LR_Tasks_02_ready = false;
LR_Tasks_03_ready = false;
LR_Tasks_04_ready = false;
LR_Tasks_05_ready = false;
LR_Tasks_06_ready = false;
LR_Tasks_07_ready = false;
LR_Tasks_08_ready = false;

LR_Sec_fnc_disCarGlitch = {
	if (not canSuspend) exitWith {[] spawn LR_Sec_fnc_disCarGlitch};
	["ColorInversion", 2500, [0.01, 0.01, 0.01], 1.5] spawn LR_Sec_fnc_ppEffect;
	["ChromAberration", 200, [0.5, 0.5, true], 1.5] spawn LR_Sec_fnc_ppEffect;
	uiSleep 1.8;
	["ColorInversion", 2500, [0.01, 0.01, 0.01], 1.5] spawn LR_Sec_fnc_ppEffect;
	["ChromAberration", 200, [0.5, 0.5, true], 1.5] spawn LR_Sec_fnc_ppEffect;
};

LR_Loadout_SL = [["UK3CB_BAF_L119A1_UKUGL","UK3CB_BAF_SFFH","acc_flashlight","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd_T",30],["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell",1],""],[],["UK3CB_BAF_L105A1","","","",["UK3CB_BAF_9_15Rnd",15],[],""],["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",[]],["UK3CB_BAF_V_Osprey_Rifleman_C",[]],["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",[]],"UK3CB_BAF_H_Mk7_Net_ESS_A","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
LR_Loadout_Engineer = [["UK3CB_BAF_L119A1_FG","UK3CB_BAF_SFFH","acc_flashlight","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd_T",30],[],""],[],["UK3CB_BAF_L105A1","","","",["UK3CB_BAF_9_15Rnd",15],[],""],["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",[]],["UK3CB_BAF_V_Osprey_SL_C",[]],["UK3CB_BAF_B_Bergen_MTP_Sapper_L_A",[]],"UK3CB_BAF_H_Mk7_Net_CESS_B","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
LR_Loadout_Medic = [["UK3CB_BAF_L85A2_RIS_Tan","UK3CB_BAF_SFFH","acc_flashlight","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd_T",30],[],""],[],["UK3CB_BAF_L105A1","","","",["UK3CB_BAF_9_15Rnd",15],[],""],["UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",[]],["UK3CB_BAF_V_Osprey_SL_A",[]],["UK3CB_BAF_B_Bergen_MTP_Medic_L_A",[]],"UK3CB_BAF_H_Mk7_Net_C","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
