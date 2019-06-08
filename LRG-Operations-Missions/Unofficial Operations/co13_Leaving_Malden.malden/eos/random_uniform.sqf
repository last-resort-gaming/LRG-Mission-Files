if (!isServer) exitWith {};

_unit = (_this select 0);

? (side _unit == INDEPENDENT) : goto "MAKEACIV";

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeBackpack _unit;
removeVest _unit;
removeHeadgear _unit;
removeGoggles _unit;

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
_unit forceAddUniform "U_I_C_Soldier_Bandit_4_F";
if (isServer) then {[_unit, "WhiteHead_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male06ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P2
_unit forceAddUniform "U_I_C_Soldier_Bandit_3_F";
if (isServer) then {[_unit, "GreekHead_A3_02"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male03GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P3
_unit forceAddUniform "U_BG_Guerilla2_3";
if (isServer) then {[_unit, "TanoanHead_A3_03"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P4
_unit forceAddUniform "CUP_U_B_CZ_WDL_TShirt";
if (isServer) then {[_unit, "GreekHead_A3_13"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male06GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P5
_unit forceAddUniform "U_I_C_Soldier_Bandit_2_F";
if (isServer) then {[_unit, "AfricanHead_02"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male05GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P6
_unit forceAddUniform "U_BG_Guerilla1_1";
if (isServer) then {[_unit, "PersianHead_A3_02"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P7
_unit forceAddUniform "U_I_C_Soldier_Para_1_F";
if (isServer) then {[_unit, "GreekHead_A3_12"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P8
_unit forceAddUniform "CUP_U_B_BAF_DPM_Tshirt";
if (isServer) then {[_unit, "TanoanHead_A3_07"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P9
_unit forceAddUniform "U_I_C_Soldier_Bandit_1_F";
if (isServer) then {[_unit, "PersianHead_A3_03"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P10
_unit forceAddUniform "U_BG_Guerilla2_2";
if (isServer) then {[_unit, "WhiteHead_21"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P11
_unit forceAddUniform "U_BG_Guerrilla_6_1";
if (isServer) then {[_unit, "TanoanHead_A3_06"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male03GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P12
_unit forceAddUniform "U_I_C_Soldier_Bandit_5_F";
if (isServer) then {[_unit, "WhiteHead_23"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P13
_unit forceAddUniform "U_C_Poloshirt_tricolour";
if (isServer) then {[_unit, "GreekHead_A3_14"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P14
_unit forceAddUniform "U_B_CTRG_Soldier_2_F";
if (isServer) then {[_unit, "PersianHead_A3_01"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P15
_unit forceAddUniform "U_I_G_Story_Protagonist_F";
if (isServer) then {[_unit, "AfricanHead_03"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male06GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P16
_unit forceAddUniform "U_BG_Guerilla1_2_F";
if (isServer) then {[_unit, "WhiteHead_17"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male05ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P17
_unit forceAddUniform "U_BG_Guerilla1_2_F";
if (isServer) then {[_unit, "GreekHead_A3_05"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male02GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P18
_unit forceAddUniform "U_C_IDAP_Man_Jeans_F";
if (isServer) then {[_unit, "TanoanHead_A3_07"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male01GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P19
_unit forceAddUniform "U_C_Mechanic_01_F";
if (isServer) then {[_unit, "TanoanHead_A3_04"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male05GRE"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#P20
_unit forceAddUniform "U_I_G_Story_Protagonist_F";
if (isServer) then {[_unit, "GreekHead_A3_11"] remoteExec ["setFace", 0, _unit]};
[_unit, "Male04ENG"] remoteExecCall ["setSpeaker", 0];
[_unit] exec "eos\random_loadout.sqf";
exit;

#MAKEACIV
_unit allowfleeing 0.5;
_unit setBehaviour "SAFE";
_unit setCombatMode "WHITE";
_unit setskill 0.3;
[_unit] exec "cos\random_Uniform.sqf";
_unit addEventHandler ["killed", { _killer = _this select 1; if (isPlayer _killer) then {[_killer,(format ["%1 (civilian) was killed by %2 !!!",name (_this select 0),name (_this select 1)])] remoteExec ["sideChat", 0];}}];
exit;