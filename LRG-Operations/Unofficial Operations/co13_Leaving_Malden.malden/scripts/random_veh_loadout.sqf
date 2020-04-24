if (!isServer) exitWith {};

_vehicle = (_this select 0);

~20

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
_vehicle addWeaponCargoGlobal ["CUP_hgun_M9", 1];
_vehicle addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9", 3];
_vehicle addBackpackCargoGlobal ["B_AssaultPack_dgtl", 1];
_vehicle addItemCargoGlobal ["NVGoggles", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 3];
_vehicle addMagazineCargoGlobal ["Chemlight_blue", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 2];
_vehicle addItemCargoGlobal ["Medikit", 1];
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", 3];
exit;


#P2
_vehicle addWeaponCargoGlobal ["CUP_srifle_M14_DMR", 1];
_vehicle addMagazineCargoGlobal ["CUP_20Rnd_762x51_DMR", 3];
_vehicle addBackpackCargoGlobal ["B_FieldPack_blk", 1];
_vehicle addWeaponCargoGlobal ["CUP_hgun_Compact", 1];
_vehicle addMagazineCargoGlobal ["CUP_10Rnd_9x19_Compact", 3];
_vehicle addItemCargoGlobal ["ItemRadio", 1];
_vehicle addItemCargoGlobal ["ItemMap", 1];
_vehicle addWeaponCargoGlobal ["Binocular", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 2];
exit;


#P3
_vehicle addWeaponCargoGlobal ["CUP_launch_RPG7V", 1];
_vehicle addMagazineCargoGlobal ["CUP_PG7V_M", 2];
_vehicle addBackpackCargoGlobal ["CUP_B_USMC_MOLLE_WDL", 1];
_vehicle addItemCargoGlobal ["ItemCompass", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_blue", 2];
_vehicle addMagazineCargoGlobal ["SmokeShell", 1];
_vehicle addItemCargoGlobal ["ToolKit", 1];
exit;


#P4
_vehicle addWeaponCargoGlobal ["CUP_hgun_M9", 1];
_vehicle addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9", 3];
_vehicle addItemCargoGlobal ["ItemCompass", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 2];
_vehicle addMagazineCargoGlobal ["Chemlight_green", 1];
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 2];
exit;


#P5
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", 2];
_vehicle addItemCargoGlobal ["ItemRadio", 1];
_vehicle addItemCargoGlobal ["NVGoggles", 1];
_vehicle addMagazineCargoGlobal ["HandGrenade", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_blue", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 1];
exit;


#P6
_vehicle addBackpackCargoGlobal ["CUP_B_USMC_MOLLE_WDL", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 2];
_vehicle addMagazineCargoGlobal ["Chemlight_yellow", 1];
_vehicle addMagazineCargoGlobal ["HandGrenade", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 2];
exit;


#P7
_vehicle addWeaponCargoGlobal ["CUP_arifle_AK47", 1];
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M", 3];
_vehicle addItemCargoGlobal ["ItemMap", 1];
_vehicle addMagazineCargoGlobal ["HandGrenade", 2];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 2];
exit;


#P8
_vehicle addWeaponCargoGlobal ["CUP_arifle_AK47", 1];
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M", 3];
_vehicle addBackpackCargoGlobal ["B_FieldPack_blk", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_green", 2];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 3];
_vehicle addMagazineCargoGlobal ["SmokeShell", 1];
exit;


#P9
_vehicle addMagazineCargoGlobal ["20Rnd_762x51_Mag", 2];
_vehicle addItemCargoGlobal ["ItemRadio", 1];
_vehicle addWeaponCargoGlobal ["Binocular", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_blue", 3];
_vehicle addMagazineCargoGlobal ["Chemlight_yellow", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 3];
exit;


#P10
_vehicle addMagazineCargoGlobal ["CUP_PG7V_M", 2];
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_Sa58_M_TracerG", 2];
_vehicle addBackpackCargoGlobal ["B_TacticalPack_mcamo", 1];
_vehicle addMagazineCargoGlobal ["HandGrenade", 1];
exit;


#P11
_vehicle addMagazineCargoGlobal ["150Rnd_762x54_Box", 1];
_vehicle addWeaponCargoGlobal ["CUP_hgun_M9", 1];
_vehicle addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9", 3];
_vehicle addItemCargoGlobal ["ItemCompass", 1];
_vehicle addItemCargoGlobal ["ItemRadio", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 1];
exit;


#P12
_vehicle addWeaponCargoGlobal ["CUP_hgun_Compact", 1];
_vehicle addMagazineCargoGlobal ["CUP_10Rnd_9x19_Compact", 3];
_vehicle addItemCargoGlobal ["NVGoggles", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_yellow", 3];
_vehicle addMagazineCargoGlobal ["SmokeShell", 1];
exit;


#P13
_vehicle addMagazineCargoGlobal ["Chemlight_red", 4];
_vehicle addMagazineCargoGlobal ["Chemlight_blue", 1];
_vehicle addMagazineCargoGlobal ["30Rnd_762x39_Mag_F", 2];
exit;


#P14
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M", 3];
_vehicle addBackpackCargoGlobal ["B_AssaultPack_dgtl", 1];
_vehicle addItemCargoGlobal ["NVGoggles", 1];
_vehicle addItemCargoGlobal ["ToolKit", 1];
_vehicle addItemCargoGlobal ["ItemMap", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 2];
exit;


#P15
_vehicle addMagazineCargoGlobal ["20Rnd_762x51_Mag", 2];
_vehicle addWeaponCargoGlobal ["Binocular", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_green", 3];
_vehicle addMagazineCargoGlobal ["Chemlight_yellow", 1];
_vehicle addMagazineCargoGlobal ["HandGrenade", 2];
exit;


#P16
_vehicle addWeaponCargoGlobal ["CUP_srifle_M14_DMR", 1];
_vehicle addMagazineCargoGlobal ["CUP_20Rnd_762x51_DMR", 3];
_vehicle addItemCargoGlobal ["ItemRadio", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_blue", 2];
_vehicle addMagazineCargoGlobal ["HandGrenade", 1];
exit;


#P17
_vehicle addMagazineCargoGlobal ["CUP_PG7V_M", 1];
_vehicle addMagazineCargoGlobal ["CUP_20Rnd_762x51_FNFAL_M", 3];
_vehicle addItemCargoGlobal ["ItemCompass", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 2];
exit;


#P18
_vehicle addMagazineCargoGlobal ["CUP_20Rnd_762x51_FNFAL_M", 2];
_vehicle addItemCargoGlobal ["ItemRadio", 1];
_vehicle addItemCargoGlobal ["NVGoggles", 1];
_vehicle addMagazineCargoGlobal ["SmokeShell", 2];
_vehicle addItemCargoGlobal ["Medikit", 1];
exit;


#P19
_vehicle addWeaponCargoGlobal ["CUP_hgun_Compact", 1];
_vehicle addMagazineCargoGlobal ["CUP_10Rnd_9x19_Compact", 3];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 3];
_vehicle addMagazineCargoGlobal ["30Rnd_762x39_Mag_F", 2];
_vehicle addMagazineCargoGlobal ["SmokeShell", 1];
exit;


#P20
_vehicle addWeaponCargoGlobal ["CUP_arifle_AK47", 1];
_vehicle addMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M", 3];
_vehicle addBackpackCargoGlobal ["B_TacticalPack_mcamo", 1];
_vehicle addItemCargoGlobal ["ItemCompass", 1];
_vehicle addItemCargoGlobal ["ItemMap", 1];
_vehicle addMagazineCargoGlobal ["HandGrenade", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_red", 1];
_vehicle addMagazineCargoGlobal ["Chemlight_green", 2];
_vehicle addMagazineCargoGlobal ["SmokeShell", 1];
exit;
