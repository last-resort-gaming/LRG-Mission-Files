if (!isServer) exitWith {};

_unit = (_this select 0);

~5

_start = random 20;

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

#P1
[_unit, "CUP_hgun_M9", 2, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
_unit addweapon "NVGoggles";
_unit addweapon "ItemCompass";
_unit addMagazines ["Chemlight_red", 1];
_unit addHeadgear "H_Hat_Safari_sand_F";
exit;

#P2
_unit addItem "FirstAidKit";
_unit addMagazines ["Chemlight_yellow", 1];
exit;

#P3
_unit addVest "CUP_V_CDF_CrewBelt";
[_unit, "CUP_srifle_CZ750", 3, "CUP_10Rnd_762x51_CZ750_Tracer"] call BIS_fnc_addWeapon;
_unit addItem "FirstAidKit";
_unit addweapon "ItemCompass";
_unit addHeadgear "H_Hat_Safari_olive_F";
exit;


#P4
_unit addBackpack "B_Messenger_IDAP_F";
[_unit, "CUP_hgun_Makarov", 2, "CUP_8Rnd_9x18_Makarov_M"] call BIS_fnc_addWeapon;
_unit addMagazines ["Chemlight_red", 1];
exit;

#P5
[_unit, "CUP_hgun_Glock17", 2, "CUP_17Rnd_9x19_glock17"] call BIS_fnc_addWeapon;
_unit addweapon "Binocular";
_unit addMagazines ["Chemlight_yellow", 1];
_unit addHeadgear "H_Construction_basic_yellow_F";
_unit addGoggles "G_EyeProtectors_F";
exit;

#P6
_unit addMagazines ["Chemlight_blue", 1];
exit;

#P7
_unit addMagazine ["HandGrenade", 1];
_unit addMagazines ["Chemlight_red", 1];
exit;

#P8
[_unit, "CUP_hgun_Compact", 2, "CUP_10Rnd_9x19_Compact"] call BIS_fnc_addWeapon;
_unit addMagazines ["Chemlight_red", 1];
_unit addGoggles "G_Respirator_white_F";
exit;

#P9
_unit addBackpack "B_Messenger_Olive_F";
_unit addItem "FirstAidKit";
_unit addweapon "NVGoggles";
exit;

#P10
_unit addMagazines ["Chemlight_red", 1];
_unit addHeadgear "H_HeadBandage_bloody_F";
_unit addGoggles "G_Respirator_white_F";
exit;

#P11
_unit addweapon "Binocular";
exit;

#P12
[_unit, "hgun_Rook40_F", 2, "16Rnd_9x21_Mag"] call BIS_fnc_addWeapon;
_unit addMagazine ["HandGrenade", 1];
_unit addMagazines ["Chemlight_yellow", 1];
exit;

#P13
_unit addBackpack "B_LegStrapBag_coyote_F";
[_unit, "CUP_srifle_CZ550", 3, "CUP_5x_22_LR_17_HMR_M"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addItem "FirstAidKit";
exit;

#P14
_unit addBackpack "B_Messenger_IDAP_F";
[_unit, "CUP_hgun_M9", 2, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
_unit addweapon "ItemCompass";
_unit addMagazines ["Chemlight_blue", 1];
exit;

#P15
_unit addItem "FirstAidKit";
_unit addGoggles "G_Respirator_yellow_F";
exit;

#P16
_unit addMagazine ["HandGrenade", 1];
_unit addGoggles "G_EyeProtectors_F";
exit;

#P17
_unit addItem "FirstAidKit";
exit;

#P18
_unit addItem "FirstAidKit";
_unit addweapon "NVGoggles";
exit;

#P19
_unit addMagazine ["HandGrenade", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addGoggles "G_Respirator_white_F";
exit;

#P20
_unit addBackpack "B_LegStrapBag_coyote_F";
[_unit, "CUP_hgun_Compact", 2, "CUP_10Rnd_9x19_Compact"] call BIS_fnc_addWeapon;
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazine ["HandGrenade", 2];
_unit addweapon "NVGoggles";
exit;