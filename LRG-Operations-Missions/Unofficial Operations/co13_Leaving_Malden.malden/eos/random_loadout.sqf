if (!isServer) exitWith {};

_unit = (_this select 0);

~5

_start = random 30;

? _start <= 1 : goto "P1";
? _start <= 2 : goto "P2";
? _start <= 3 : goto "P3";
? _start <= 4 : goto "P4";
? _start <= 5 : goto "P5";
? _start <= 6 : goto "P6";
? _start <= 7 : goto "P7";
? _start <= 8 : goto "P8";
? _start <= 9 : goto "P9";
? _start <= 10 : goto "P10";
? _start <= 11 : goto "P11";
? _start <= 12 : goto "P12";
? _start <= 13 : goto "P13";
? _start <= 14 : goto "P14";
? _start <= 15 : goto "P15";
? _start <= 16 : goto "P16";
? _start <= 17 : goto "P17";
? _start <= 18 : goto "P18";
? _start <= 19 : goto "P19";
? _start <= 20 : goto "P20";
? _start <= 21 : goto "P21";
? _start <= 22 : goto "P22";
? _start <= 23 : goto "P23";
? _start <= 24 : goto "P24";
? _start <= 25 : goto "P25";
? _start <= 26 : goto "P26";
? _start <= 27 : goto "P27";
? _start <= 28 : goto "P28";
? _start <= 29 : goto "P29";
? _start <= 30 : goto "P30";

#P1
_unit addVest "V_PlateCarrierIA1_dgtl";
_unit addBackpack "B_FieldPack_blk";
_unit addGoggles "G_Bandanna_oli";
[_unit, "CUP_arifle_AKS", 4, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_M9", 2, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
[_unit, "CUP_launch_RPG7V", 2, "CUP_PG7V_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addweapon "NVGoggles";
_unit addItem "FirstAidKit";
_unit addItem "ToolKit";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["Chemlight_red", 2];
exit;


#P2
_unit addVest "CUP_V_B_GER_Vest_2";
_unit addGoggles "G_Bandanna_beast";
[_unit, "arifle_AK12_GL_F", 6, "30Rnd_762x39_Mag_F"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addMagazines ["1Rnd_HE_Grenade_shell", 3];
_unit addMagazines ["UGL_FlareWhite_F", 2];
_unit addMagazines ["UGL_FlareRed_F", 1];
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShell", 1];
exit;


#P3
_unit addVest "V_PlateCarrierIA1_dgtl";
_unit addBackpack "B_AssaultPack_khk";
_unit addGoggles "G_Balaclava_blk";
[_unit, "CUP_arifle_AKM", 5, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_Makarov", 2, "CUP_8Rnd_9x18_Makarov_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_launch_RPG7V", 2, "CUP_PG7V_M"] call BIS_fnc_addWeapon;
_unit addItem "ToolKit";
_unit addItem "FirstAidKit";
_unit addweapon "ItemRadio";
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["Chemlight_yellow", 1];
exit;


#P4
_unit addVest "V_HarnessO_ghex_F";
_unit addGoggles "G_Bandanna_sport";
_unit addBackpack "B_AssaultPack_dgtl";
[_unit, "CUP_arifle_AK47", 4, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_launch_RPG7V", 2, "CUP_PG7V_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addweapon "NVGoggles";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P5
_unit addBackpack "B_TacticalPack_rgr";
_unit addGoggles "G_Balaclava_blk";
[_unit, "CUP_arifle_AK47", 6, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon;
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShellGreen", 2];
_unit addMagazines ["Chemlight_green", 1];
exit;


#P6
_unit addVest "V_Pocketed_black_F";
_unit addHeadgear "CUP_H_USMC_BOONIE_PRR_WDL";
_unit addGoggles "G_Bandanna_beast";
[_unit, "CUP_arifle_AKS74U", 5, "CUP_30Rnd_545x39_AK_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_M9", 2, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addItem "FirstAidKit";
_unit addMagazines ["SmokeShellOrange", 1];
_unit addMagazines ["SmokeShell", 1];
exit;


#P7
_unit addVest "CUP_V_B_GER_Carrier_Vest";
_unit addBackpack "B_AssaultPack_khk";
_unit addGoggles "G_Bandanna_shades";
[_unit, "CUP_arifle_AKS_Gold", 7, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "CUP_optic_Kobra";
[_unit, "CUP_hgun_Makarov", 3, "CUP_8Rnd_9x18_Makarov_M"] call BIS_fnc_addWeapon;
_unit addItem "Medikit";
_unit addweapon "NVGoggles";
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShell", 2];
_unit addMagazines ["Chemlight_blue", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P8
_unit addVest "V_HarnessO_ghex_F";
_unit addBackpack "B_LegStrapBag_black_F";
_unit addGoggles "G_Bandanna_beast";
[_unit, "arifle_AK12_F", 6, "30Rnd_762x39_Mag_F"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_MRCO";
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShellBlue", 1];
_unit addMagazines ["SmokeShellGreen", 1];
exit;


#P9
_unit addVest "V_Chestrig_rgr";
_unit addBackpack "B_AssaultPack_dgtl";
_unit addGoggles "G_Bandanna_khk";
[_unit, "CUP_arifle_AK47", 6, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon; 
[_unit, "CUP_hgun_Glock17", 3, "CUP_17Rnd_9x19_glock17"] call BIS_fnc_addWeapon;
[_unit, "CUP_launch_RPG7V", 3, "CUP_PG7V_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemRadio";
_unit addItem "Medikit";
_unit addweapon "ItemCompass";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["Chemlight_blue", 1];
_unit addMagazines ["Chemlight_green", 1];
exit;


#P10
_unit addVest "CUP_V_B_GER_Carrier_Rig";
_unit addGoggles "G_Bandanna_oli";
[_unit, "CUP_arifle_AK74M_GL", 5, "CUP_30Rnd_545x39_AK_M"] call BIS_fnc_addWeapon;
_unit addMagazines ["CUP_1Rnd_HE_GP25_M", 4];
_unit addMagazines ["CUP_FlareWhite_GP25_M", 2];
_unit addMagazines ["CUP_FlareGreen_GP25_M", 1];
_unit addweapon "ItemCompass";
_unit addItem "FirstAidKit";
_unit addMagazines ["SmokeShellRed", 2];
_unit addMagazines ["Chemlight_yellow", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P11
_unit addBackpack "B_AssaultPack_dgtl";
_unit addGoggles "G_Bandanna_shades";
[_unit, "CUP_arifle_FNFAL_railed", 6, "CUP_20Rnd_762x51_FNFAL_M"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "optic_Arco_blk_F";
[_unit, "CUP_hgun_M9", 2, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addweapon "NVGoggles";
_unit addItem "FirstAidKit";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["Chemlight_blue", 1];
exit;


#P12
_unit addVest "CUP_V_B_GER_Carrier_Rig";
_unit addBackpack "B_TacticalPack_mcamo";
_unit addHeadgear "H_Bandanna_cbr";
_unit addGoggles "G_Bandanna_tan";
[_unit, "CUP_srifle_SVD", 6, "CUP_10Rnd_762x54_SVD_M"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "CUP_optic_PSO_3";
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShellBlue", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P13
_unit addVest "V_TacVest_oli";
_unit addHeadgear "H_Bandanna_mcamo";
_unit addGoggles "G_Bandanna_beast";
[_unit, "CUP_arifle_AK74M_GL", 4, "CUP_30Rnd_545x39_AK_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_Glock17", 3, "CUP_17Rnd_9x19_glock17"] call BIS_fnc_addWeapon;
_unit addMagazines ["CUP_1Rnd_HE_GP25_M", 4];
_unit addMagazines ["CUP_FlareWhite_GP25_M", 1];
_unit addMagazines ["CUP_FlareYellow_GP25_M", 2];
_unit addweapon "ItemCompass";
_unit addItem "FirstAidKit";
_unit addweapon "NVGoggles";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShellOrange", 1];
exit;


#P14
_unit addVest "CUP_V_I_RACS_Carrier_Vest_wdl_3";
_unit addBackpack "CUP_B_USMC_MOLLE_WDL";
_unit addGoggles "G_Bandanna_aviator";
[_unit, "arifle_AK12_F", 6, "30Rnd_762x39_Mag_F"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addItem "Medikit";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShellBlue", 2];
_unit addMagazines ["Chemlight_blue", 1];
exit;


#P15
_unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Medic";
_unit addGoggles "G_Bandanna_beast";
[_unit, "CUP_arifle_AKS74U", 7, "CUP_30Rnd_545x39_AK_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_Compact", 3, "CUP_10Rnd_9x19_Compact"] call BIS_fnc_addWeapon;
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P16
_unit addVest "V_TacVest_oli";
_unit addBackpack "B_TacticalPack_rgr";
_unit addGoggles "G_Bandanna_oli";
[_unit, "CUP_lmg_PKM", 3, "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addweapon "NVGoggles";
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["Chemlight_blue", 2];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P17
_unit addVest "CUP_V_I_RACS_Carrier_Vest_wdl_3";
_unit addGoggles "G_Bandanna_blk";
[_unit, "CUP_arifle_AKS", 4, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addMagazines ["SmokeShellOrange", 1];
_unit addMagazines ["HandGrenade", 1];
exit;


#P18
_unit addVest "V_BandollierB_rgr";
_unit addHeadgear "H_Bandanna_blu";
_unit addGoggles "G_Bandanna_beast";
[_unit, "CUP_arifle_FNFAL_railed", 7, "CUP_20Rnd_762x51_FNFAL_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_Glock17", 3, "CUP_17Rnd_9x19_glock17"] call BIS_fnc_addWeapon;
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "NVGoggles";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["Chemlight_yellow", 1];
exit;


#P19
_unit addVest "CUP_V_BAF_Osprey_Mk2_DPM_Medic";
_unit addGoggles "G_Bandanna_beast";
_unit addBackpack "B_TacticalPack_mcamo";
[_unit, "CUP_arifle_AK74M_GL", 6, "CUP_30Rnd_545x39_AK_M"] call BIS_fnc_addWeapon;
[_unit, "CUP_hgun_Compact", 2, "CUP_10Rnd_9x19_Compact"] call BIS_fnc_addWeapon;
_unit addMagazines ["CUP_1Rnd_HE_GP25_M", 5];
_unit addMagazines ["CUP_FlareWhite_GP25_M", 1];
_unit addMagazines ["CUP_FlareRed_GP25_M", 1];
[_unit, "CUP_launch_RPG7V", 2, "CUP_PG7V_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "NVGoggles";
_unit addMagazines ["SmokeShellRed", 1];
exit;


#P20
_unit addVest "V_BandollierB_rgr";
_unit addBackpack "B_TacticalPack_mcamo";
_unit addGoggles "G_Bandanna_aviator";
[_unit, "CUP_lmg_PKM", 3, "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShellRed", 2];
_unit addMagazines ["Chemlight_blue", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P21
_unit addVest "V_TacVest_oli";
_unit addGoggles "G_Bandanna_shades";
[_unit, "CUP_arifle_AK47", 4, "CUP_30Rnd_762x39_AK47_M"] call BIS_fnc_addWeapon; 
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShell", 1];
exit;


#P22
_unit addVest "V_Pocketed_black_F";
_unit addBackpack "B_LegStrapBag_black_F";
_unit addGoggles "G_Balaclava_blk";
[_unit, "CUP_arifle_AKS74U", 6, "CUP_30Rnd_545x39_AK_M"] call BIS_fnc_addWeapon;
_unit addItem "FirstAidKit";
_unit addweapon "ItemCompass";
_unit addMagazines ["SmokeShell", 2];
_unit addMagazines ["HandGrenade", 2];
_unit addweapon "Binocular";
_unit addMagazines ["Chemlight_red", 1];
exit;


#P23
_unit addVest "V_HarnessO_ghex_F";
_unit addGoggles "G_Bandanna_shades";
[_unit, "CUP_srifle_M14_DMR", 5, "CUP_20Rnd_762x51_DMR"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "optic_MRCO";
_unit addweapon "NVGoggles";
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShell", 2];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P24
_unit addVest "V_TacVest_oli";
_unit addGoggles "G_Bandanna_tan";
[_unit, "CUP_arifle_M4A1_black", 6, "CUP_30Rnd_556x45_Stanag"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addMagazines ["HandGrenade", 2];
exit;


#P25
_unit addVest "V_Chestrig_rgr";
_unit addBackpack "B_AssaultPack_dgtl";
_unit addGoggles "G_Bandanna_aviator";
_unit addHeadgear "H_Bandanna_cbr";
[_unit, "CUP_arifle_M4A1_BUIS_camo_GL", 6, "CUP_30Rnd_556x45_Stanag"] call BIS_fnc_addWeapon;
_unit addMagazines ["CUP_1Rnd_HE_M203", 5];
_unit addMagazines ["CUP_FlareWhite_M203", 1];
_unit addMagazines ["CUP_FlareGreen_M203", 1];
_unit addMagazines ["CUP_FlareRed_M203", 1];
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addItem "ToolKit"
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShell", 3];
_unit addMagazines ["Chemlight_yellow", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;


#P26
_unit addVest "V_HarnessO_ghex_F";
_unit addBackpack "B_TacticalPack_rgr";
_unit addHeadgear "H_Bandanna_mcamo";
_unit addGoggles "G_Bandanna_shades";
[_unit, "LMG_Zafir_F", 3, "150Rnd_762x54_Box"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "ItemCompass";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 3];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["Chemlight_blue", 1];
exit;


#P27
_unit addBackpack "B_Kitbag_rgr";
[_unit, "CUP_arifle_Sa58RIS2", 4, "CUP_30Rnd_Sa58_M_TracerG"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "optic_Aco";
_unit addPrimaryWeaponItem "acc_flashlight";
[_unit, "CUP_hgun_Glock17", 1, "CUP_17Rnd_9x19_glock17"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["Chemlight_green", 1];
_unit addItem "Medikit";
exit;


#P28
_unit addVest "V_Pocketed_coyote_F";
_unit addBackpack "B_LegStrapBag_coyote_F";
_unit addGoggles "G_Balaclava_blk";
[_unit, "srifle_EBR_F", 7, "20Rnd_762x51_Mag"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "optic_AMS";
_unit addMagazines ["HandGrenade", 2];
_unit addMagazines ["SmokeShellRed", 2];
_unit addMagazines ["Chemlight_red", 1];
_unit addweapon "NVGoggles";
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addweapon "Binocular";
_unit addItem "FirstAidKit";
exit;


#P29
_unit addVest "V_Pocketed_coyote_F";
_unit addBackpack "B_TacticalPack_mcamo";
_unit addGoggles "G_Bandanna_aviator";
_unit addHeadgear "H_Bandanna_cbr";
[_unit, "arifle_SPAR_03_khk_F", 6, "20Rnd_762x51_Mag"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "optic_MRCO";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addItem "ToolKit"
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["Chemlight_yellow", 2];
exit;


#P30
_unit addVest "V_Pocketed_black_F";
_unit addBackpack "B_LegStrapBag_black_F";
_unit addGoggles "G_Bandanna_beast";
[_unit, "arifle_AK12_GL_F", 5, "30Rnd_762x39_Mag_F"] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addMagazines ["1Rnd_HE_Grenade_shell", 5];
_unit addMagazines ["UGL_FlareWhite_F", 2];
_unit addMagazines ["UGL_FlareRed_F", 1];
_unit addweapon "ItemCompass";
_unit addweapon "ItemRadio";
_unit addItem "FirstAidKit";
_unit addweapon "Binocular";
_unit addMagazines ["HandGrenade", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["SmokeShellBlue", 2];
exit;
