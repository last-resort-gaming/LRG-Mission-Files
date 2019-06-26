_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

_availableHeadgear = [
"UK3CB_BAF_H_Beret_RAF",
"UK3CB_BAF_H_CrewHelmet_A",
"UK3CB_BAF_H_CrewHelmet_ESS_A",
"UK3CB_BAF_H_PilotHelmetHeli_A",
"UK3CB_BAF_H_Mk7_Camo_A",
"UK3CB_BAF_H_Mk7_Camo_B",
"UK3CB_BAF_H_Mk7_Camo_C",
"UK3CB_BAF_H_Mk7_Camo_D",
"UK3CB_BAF_H_Mk7_Camo_E",
"UK3CB_BAF_H_Mk7_Camo_F",
"UK3CB_BAF_H_Mk7_Camo_ESS_A",
"UK3CB_BAF_H_Mk7_Camo_ESS_B",
"UK3CB_BAF_H_Mk7_Camo_ESS_C",
"UK3CB_BAF_H_Mk7_Camo_ESS_D",
"UK3CB_BAF_H_Mk7_Camo_CESS_A",
"UK3CB_BAF_H_Mk7_Camo_CESS_B",
"UK3CB_BAF_H_Mk7_Camo_CESS_C",
"UK3CB_BAF_H_Mk7_Camo_CESS_D",
"UK3CB_BAF_H_Mk7_Net_A",
"UK3CB_BAF_H_Mk7_Net_B",
"UK3CB_BAF_H_Mk7_Net_C",
"UK3CB_BAF_H_Mk7_Net_D",
"UK3CB_BAF_H_Mk7_Net_ESS_A",
"UK3CB_BAF_H_Mk7_Net_ESS_B",
"UK3CB_BAF_H_Mk7_Net_ESS_C",
"UK3CB_BAF_H_Mk7_Net_ESS_D",
"UK3CB_BAF_H_Mk7_Net_CESS_A",
"UK3CB_BAF_H_Mk7_Net_CESS_B",
"UK3CB_BAF_H_Mk7_Net_CESS_C",
"UK3CB_BAF_H_Mk7_Net_CESS_D",
"UK3CB_BAF_H_Mk7_Scrim_A",
"UK3CB_BAF_H_Mk7_Scrim_B",
"UK3CB_BAF_H_Mk7_Scrim_C",
"UK3CB_BAF_H_Mk7_Scrim_D",
"UK3CB_BAF_H_Mk7_Scrim_E",
"UK3CB_BAF_H_Mk7_Scrim_F",
"UK3CB_BAF_H_Mk7_Scrim_ESS_A",
"UK3CB_BAF_H_Mk7_Scrim_ESS_B",
"UK3CB_BAF_H_Mk7_Scrim_ESS_C"
];
_availableGoggles = [
"G_Balaclava_blk",
"G_Balaclava_combat",
"G_Balaclava_lowprofile",
"G_Balaclava_oli",
"G_Bandanna_aviator",
"G_Bandanna_beast",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_shades",
"G_Bandanna_sport",
"G_Bandanna_tan",
"G_Combat",
"G_Lowprofile",
"G_Tactical_Black",
"G_Tactical_Clear",
"G_Aviator",
"G_Spectacles",
"G_Spectacles_Tinted",
"G_Squares",
"G_Squares_Tinted",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Sport_Blackred",
"G_Sport_BlackWhite",
"G_Sport_Blackyellow",
"G_Sport_Checkered",
"G_Sport_Greenblack",
"G_Sport_Red",
"G_B_Diving",
"G_Combat_Goggles_tna_F",
"G_Balaclava_oli",
"G_Balaclava_TI_blk_F",
"G_Balaclava_TI_G_blk_F",
"G_Balaclava_TI_G_tna_F",
"G_Balaclava_TI_tna_F",
"UK3CB_BAF_G_Tactical_Black",
"UK3CB_BAF_G_Tactical_Clear",
"UK3CB_BAF_G_Tactical_Grey",
"UK3CB_BAF_G_Tactical_Orange",
"UK3CB_BAF_G_Tactical_Yellow"
];
_availableUniforms = [
"UK3CB_BAF_U_CombatUniform_MTP_TShirt",
"UK3CB_BAF_U_CombatUniform_MTP",
"UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",
"UK3CB_BAF_U_HeliPilotCoveralls_RAF",
"UK3CB_BAF_U_Smock_MTP"

];
_availableVests = [
"UK3CB_BAF_V_Osprey",
"UK3CB_BAF_V_Osprey_Belt_A",
"UK3CB_BAF_V_Osprey_Grenadier_A",
"UK3CB_BAF_V_Osprey_Grenadier_B",
"UK3CB_BAF_V_Osprey_Holster",
"UK3CB_BAF_V_Osprey_Marksman_A",
"UK3CB_BAF_V_Osprey_Medic_A",
"UK3CB_BAF_V_Osprey_Medic_B",
"UK3CB_BAF_V_Osprey_Medic_C",
"UK3CB_BAF_V_Osprey_Medic_D",
"UK3CB_BAF_V_Osprey_MG_A",
"UK3CB_BAF_V_Osprey_MG_B",
"UK3CB_BAF_V_Osprey_Rifleman_A",
"UK3CB_BAF_V_Osprey_Rifleman_B",
"UK3CB_BAF_V_Osprey_Rifleman_C",
"UK3CB_BAF_V_Osprey_Rifleman_D",
"UK3CB_BAF_V_Osprey_Rifleman_E",
"UK3CB_BAF_V_Osprey_Rifleman_F",
"UK3CB_BAF_V_Osprey_SL_A",
"UK3CB_BAF_V_Osprey_SL_B",
"UK3CB_BAF_V_Osprey_SL_C",
"UK3CB_BAF_V_Osprey_SL_D",
"UK3CB_BAF_V_Pilot_A"
];

_availableBackpacks = [
"UK3CB_BAF_B_Bergen_MTP_Engineer_H_A",
"UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",
"UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",
"UK3CB_BAF_B_Bergen_MTP_JTAC_L_A",
"UK3CB_BAF_B_Bergen_MTP_Medic_H_A",
"UK3CB_BAF_B_Bergen_MTP_Medic_H_B",
"UK3CB_BAF_B_Bergen_MTP_Medic_L_A",
"UK3CB_BAF_B_Bergen_MTP_Medic_L_B",
"UK3CB_BAF_B_Bergen_MTP_PointMan_H_A",
"UK3CB_BAF_B_Bergen_MTP_PointMan_L_A",
"UK3CB_BAF_B_Bergen_MTP_Radio_H_A",
"UK3CB_BAF_B_Bergen_MTP_Radio_H_B",
"UK3CB_BAF_B_Bergen_MTP_Radio_L_A",
"UK3CB_BAF_B_Bergen_MTP_Radio_L_B",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D",
"UK3CB_BAF_B_Bergen_MTP_Sapper_H_A",
"UK3CB_BAF_B_Bergen_MTP_Sapper_L_A",
"UK3CB_BAF_B_Bergen_MTP_SL_H_A",
"UK3CB_BAF_B_Bergen_MTP_SL_L_A"
];

_availableAttachments = [
"optic_NVS",
"UK3CB_BAF_SUIT", 
"UK3CB_BAF_SUSAT",
"UK3CB_BAF_SUSAT_3D", 
"UK3CB_BAF_TA648", 
"UK3CB_BAF_TA648_308", 
"UK3CB_BAF_TA31F", 
"UK3CB_BAF_TA31F_Hornbill", 
"UK3CB_BAF_TA31F_3D", 
"UK3CB_BAF_TA31F_Hornbill_3D", 
"UK3CB_BAF_Eotech", 
"UK3CB_BAF_SB31250", 
"UK3CB_BAF_SB31250_Ghillie", 
"UK3CB_BAF_SB31250_Desert", 
"UK3CB_BAF_SB31250_Desert_Ghillie", 
"UK3CB_BAF_SpecterLDS", 
"UK3CB_BAF_SpecterLDS_3D", 
"UK3CB_BAF_SpecterLDS_Dot", 
"UK3CB_BAF_SpecterLDS_Dot_3D",
"UK3CB_BAF_LLM_IR_Tan", 
"UK3CB_BAF_LLM_IR_Black", 
"UK3CB_BAF_LLM_Flashlight_Tan", 
"UK3CB_BAF_LLM_Flashlight_Black", 
"UK3CB_BAF_Flashlight_L131A1", 
"UK3CB_BAF_SFFH", 
"UK3CB_BAF_BFA_L85", 
"UK3CB_BAF_BFA_L110", 
"UK3CB_BAF_BFA_L129", 
"UK3CB_BAF_BFA_L7",
"UK3CB_BAF_Silencer_L85", 
"UK3CB_BAF_Silencer_L110",
"UK3CB_BAF_Silencer_L115A3", 
"UK3CB_BAF_Silencer_L91A1",
"RKSL_optic_PMII_312_sunshade",
"RKSL_optic_PMII_312_sunshade_wdl",
"RKSL_optic_PMII_312_sunshade_des",
"RKSL_optic_LDS",
"RKSL_optic_LDS_C",
"UK3CB_BAF_L85A2_RIS_Tan"
];

_availableMagazines = [
"UK3CB_BAF_556_30Rnd",
"UK3CB_BAF_556_30Rnd_T",
"UK3C-B_BAF_556_100Rnd_T",
"UK3CB_BAF_556_200Rnd_T",
"UK3CB_BAF_762_L42A1_20Rnd_T",
"UK3CB_BAF_762_100Rnd_T",
"UK3CB_BAF_9_17Rnd",
"UK3CB_BAF_9_30Rnd",
"UK3CB_BAF_127_10Rnd",
"UK3CB_BAF_127_10Rnd_AP",
"UK3CB_BAF_L115A3_Mag",
"UK3CB_BAF_12G_Pellets",
"UK3CB_BAF_12G_Slugs",
"SmokeShell",
"SmokeShellYellow",
"SmokeShellGreen",
"SmokeShellRed",
"SmokeShellPurple",
"SmokeShellOrange",
"SmokeShellBlue",
"Chemlight_green",
"Chemlight_red",
"Chemlight_yellow",
"Chemlight_blue",
"B_IR_Grenade",
"UK3CB_BAF_1Rnd_81mm_Mo_shells",
"UK3CB_BAF_1Rnd_81mm_Mo_Flare_white",
"UK3CB_BAF_1Rnd_81mm_Mo_Smoke_white",
"UK3CB_BAF_1Rnd_81mm_Mo_guided",
"UK3CB_BAF_1Rnd_81mm_Mo_LG",
"UK3CB_BAF_150Rnd_762x51_Box",
"UK3CB_BAF_32Rnd_40mm_G_Box",
"UK3CB_BAF_127_100Rnd",
"UK3CB_BAF_1Rnd_HE_Grenade_Shell", 
"UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", 
"UK3CB_BAF_UGL_FlareWhite_F", 
"UK3CB_BAF_UGL_FlareRed_F", 
"UK3CB_BAF_UGL_FlareGreen_F", 
"UK3CB_BAF_UGL_FlareYellow_F", 
"UK3CB_BAF_UGL_FlareCIR_F",
"UK3CB_BAF_32Rnd_40mm_G_Box",
"UK3CB_BAF_1Rnd_60mm_Mo_Shells", 
"UK3CB_BAF_1Rnd_60mm_Mo_Flare_White", 
"UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White",
"UK3CB_BAF_1Rnd_81mm_Mo_Shells", 
"UK3CB_BAF_1Rnd_81mm_Mo_Flare_White", 
"UK3CB_BAF_1Rnd_81mm_Mo_IRFlare_White", 
"UK3CB_BAF_1Rnd_81mm_Mo_Smoke_White", 
"UK3CB_BAF_1Rnd_81mm_Mo_Guided", 
"UK3CB_BAF_1Rnd_81mm_Mo_LG",
"Laserbatteries"
];

_availableWeapons = [
"UK3CB_BAF_L110A3", 
"UK3CB_BAF_L110A2_FIST",
"UK3CB_BAF_L115A3_Ghillie", 
"UK3CB_BAF_L115A3_DE_Ghillie", 
"UK3CB_BAF_L115A3_BL_Ghillie", 
"UK3CB_BAF_L119A1_CQB",
"UK3CB_BAF_L119A1_FG",
"UK3CB_BAF_L119A1_UKUGL",
"UK3CB_BAF_L85A2_UGL_HWS",
"UK3CB_BAF_L85A2_RIS",
"UK3CB_BAF_L85A2_RIS_Tan",
"UK3CB_BAF_L85A2_RIS_Green",
"UK3CB_BAF_L86A2",
"UK3CB_BAF_L86A3",
"UK3CB_BAF_L91A1",
"UK3CB_BAF_L92A1",
"UK3CB_BAF_L128A1",
"UK3CB_BAF_L129A1",
"UK3CB_BAF_L129A1_Grippod",
"UK3CB_BAF_L129A1_AFG",
"UK3CB_BAF_L129A1_FGrip",
"UK3CB_BAF_L131A1",
"UK3CB_BAF_L82A1",
"UK3CB_BAF_AT4_CS_AT_Launcher", 
"UK3CB_BAF_AT4_CS_AP_Launcher",
"UK3CB_BAF_Javelin_Launcher", 
"UK3CB_BAF_Javelin_Slung_Tube",
"UK3CB_BAF_NLAW_Launcher",
"UK3CB_BAF_Soflam_Laserdesignator",
"UK3CB_BAF_Tripod", 
"UK3CB_BAF_L16_Tripod", 
"UK3CB_BAF_L111A1", 
"UK3CB_BAF_L134A1", 
"UK3CB_BAF_L16", 
"UK3CB_BAF_M6"
];


[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableGoggles + _availableUniforms + _availableVests + _availableAttachments)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazines )] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) +_availableWeapons)] call BIS_fnc_addVirtualWeaponCargo;