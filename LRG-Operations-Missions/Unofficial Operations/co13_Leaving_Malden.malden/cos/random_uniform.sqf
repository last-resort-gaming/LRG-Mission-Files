if (!isServer) exitWith {};

_unit = (_this select 0);

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeBackpack _unit;
removeVest _unit;
removeHeadgear _unit;
removeGoggles _unit;

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
_unit forceAddUniform "U_C_Man_casual_5_F";
if (isServer) then {[_unit, "WhiteHead_12"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P2
_unit forceAddUniform "U_C_man_sport_2_F";
if (isServer) then {[_unit, "WhiteHead_23"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male03GRE"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_Safety_yellow_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P3
_unit forceAddUniform "U_C_Poloshirt_tricolour";
if (isServer) then {[_unit, "WhiteHead_01"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male06ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P4
_unit forceAddUniform "U_C_Man_casual_3_F";
if (isServer) then {[_unit, "WhiteHead_14"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P5
_unit forceAddUniform "U_C_Man_casual_6_F";
if (isServer) then {[_unit, "WhiteHead_07"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male09ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P6
_unit forceAddUniform "U_C_Man_casual_1_F";
if (isServer) then {[_unit, "GreekHead_A3_12"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P7
_unit forceAddUniform "U_C_Poloshirt_salmon";
if (isServer) then {[_unit, "GreekHead_A3_11"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P8
_unit forceAddUniform "U_C_Man_casual_4_F";
if (isServer) then {[_unit, "GreekHead_A3_04"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P9
_unit forceAddUniform "U_C_Poor_2";
if (isServer) then {[_unit, "WhiteHead_12"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male05ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P10
_unit forceAddUniform "U_C_man_sport_1_F";
if (isServer) then {[_unit, "TanoanHead_A3_07"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male05GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P11
_unit forceAddUniform "U_C_Poloshirt_blue";
if (isServer) then {[_unit, "WhiteHead_17"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P12
_unit forceAddUniform "U_C_Poloshirt_stripped";
if (isServer) then {[_unit, "AsianHead_A3_04"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male06GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P13
_unit forceAddUniform "U_C_man_sport_3_F";
if (isServer) then {[_unit, "AfricanHead_03"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male08ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P14
_unit forceAddUniform "U_C_Man_casual_2_F";
if (isServer) then {[_unit, "TanoanHead_A3_03"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male03GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P15
_unit forceAddUniform "U_C_Poloshirt_redwhite";
if (isServer) then {[_unit, "TanoanHead_A3_04"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P16
_unit forceAddUniform "U_C_Poloshirt_burgundy";
if (isServer) then {[_unit, "WhiteHead_16"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P17
_unit forceAddUniform "CUP_U_C_Policeman_01";
if (isServer) then {[_unit, "WhiteHead_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01ENG"] remoteExecCall ["setSpeaker", 0];
_unit addVest "CUP_V_CDF_CrewBelt";
[_unit, "CUP_hgun_M9", 3, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
_unit addItem "FirstAidKit";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P18
_unit forceAddUniform "U_C_IDAP_Man_cargo_F";
if (isServer) then {[_unit, "WhiteHead_18"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_LegStrapBag_black_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P19
_unit forceAddUniform "CUP_U_C_Rescuer_01";
if (isServer) then {[_unit, "WhiteHead_07"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02ENG"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_Plain_medical_F";
_unit addItem "FirstAidKit";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P20
_unit forceAddUniform "U_C_Journalist";
if (isServer) then {[_unit, "WhiteHead_05"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male08ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P21
_unit forceAddUniform "U_C_Paramedic_01_F";
if (isServer) then {[_unit, "WhiteHead_02"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04ENG"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_LegStrapBag_black_F";
_unit addItem "V_Plain_medical_F";
_unit addGoggles "G_Respirator_white_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P22
_unit forceAddUniform "CUP_U_C_Policeman_01";
if (isServer) then {[_unit, "WhiteHead_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01ENG"] remoteExecCall ["setSpeaker", 0];
_unit addVest "CUP_V_CDF_CrewBelt";
[_unit, "CUP_hgun_M9", 3, "CUP_15Rnd_9x19_M9"] call BIS_fnc_addWeapon;
_unit addItem "FirstAidKit";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P23
_unit forceAddUniform "U_C_man_sport_1_F";
if (isServer) then {[_unit, "GreekHead_A3_12"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male11ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P24
_unit forceAddUniform "U_C_IDAP_Man_Jeans_F";
if (isServer) then {[_unit, "TanoanHead_A3_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04GRE"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_Safety_yellow_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P25
_unit forceAddUniform "U_C_IDAP_Man_cargo_F";
if (isServer) then {[_unit, "TanoanHead_A3_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male09ENG"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_Safety_blue_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P26
_unit forceAddUniform "U_C_IDAP_Man_Jeans_F";
if (isServer) then {[_unit, "GreekHead_A3_11"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P27
_unit forceAddUniform "U_C_IDAP_Man_casual_F";
if (isServer) then {[_unit, "WhiteHead_16"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;

#P28
_unit forceAddUniform "U_C_IDAP_Man_TeeShorts_F";
if (isServer) then {[_unit, "TanoanHead_A3_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04GRE"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_Safety_orange_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P29
_unit forceAddUniform "U_C_ConstructionCoverall_Vrana_F";
if (isServer) then {[_unit, "TanoanHead_A3_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04GRE"] remoteExecCall ["setSpeaker", 0];
_unit addVest "V_Pocketed_black_F";
[_unit] exec "cos\random_loadout.sqf";
exit;

#P30
_unit forceAddUniform "U_C_ConstructionCoverall_Black_F";
if (isServer) then {[_unit, "GreekHead_A3_12"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male07ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "cos\random_loadout.sqf";
exit;
