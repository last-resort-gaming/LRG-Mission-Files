if (!isServer) exitWith {};
? damage startdummy1 >= 1 : exit;

~2
player allowDammage false;

RND_Number_Spawn = Ceil random 26;
publicVariable "RND_Number_Spawn";

? (RND_Number_Spawn) <= 1 : goto "P1";
? (RND_Number_Spawn) <= 2 : goto "P2";
? (RND_Number_Spawn) <= 3 : goto "P3";
? (RND_Number_Spawn) <= 4 : goto "P4";
? (RND_Number_Spawn) <= 5 : goto "P5";
? (RND_Number_Spawn) <= 6 : goto "P6";
? (RND_Number_Spawn) <= 7 : goto "P7";
? (RND_Number_Spawn) <= 8 : goto "P8";
? (RND_Number_Spawn) <= 9 : goto "P9";
? (RND_Number_Spawn) <= 10 : goto "P10";
? (RND_Number_Spawn) <= 11 : goto "P11";
? (RND_Number_Spawn) <= 12 : goto "P12";
? (RND_Number_Spawn) <= 13 : goto "P13";
? (RND_Number_Spawn) <= 14 : goto "P14";
? (RND_Number_Spawn) <= 15 : goto "P15";
? (RND_Number_Spawn) <= 16 : goto "P16";
? (RND_Number_Spawn) <= 17 : goto "P17";
? (RND_Number_Spawn) <= 18 : goto "P18";
? (RND_Number_Spawn) <= 19 : goto "P19";
? (RND_Number_Spawn) <= 20 : goto "P20";
? (RND_Number_Spawn) <= 21 : goto "P21";
? (RND_Number_Spawn) <= 22 : goto "P22";
? (RND_Number_Spawn) <= 23 : goto "P23";
? (RND_Number_Spawn) <= 24 : goto "P24";
? (RND_Number_Spawn) <= 25 : goto "P25";
? (RND_Number_Spawn) <= 26 : goto "P26";

#P1
[SPAWN_01,CAMPPOS_01] exec "scripts\startposition_execute.sqf";
[CAMPPOS_01] exec "scripts\startposition_crashsite.sqf";
exit;

#P2
[SPAWN_02,CAMPPOS_02] exec "scripts\startposition_execute.sqf";
[CAMPPOS_02] exec "scripts\startposition_crashsite.sqf";
exit;

#P3
[SPAWN_03,CAMPPOS_03] exec "scripts\startposition_execute.sqf";
[CAMPPOS_03] exec "scripts\startposition_crashsite.sqf";
exit;

#P4
[SPAWN_04,CAMPPOS_04] exec "scripts\startposition_execute.sqf";
[CAMPPOS_04] exec "scripts\startposition_crashsite.sqf";
exit;

#P5
[SPAWN_05,CAMPPOS_05] exec "scripts\startposition_execute.sqf";
[CAMPPOS_05] exec "scripts\startposition_crashsite.sqf";
exit;

#P6
[SPAWN_06,CAMPPOS_06] exec "scripts\startposition_execute.sqf";
[CAMPPOS_06] exec "scripts\startposition_crashsite.sqf";
exit;

#P7
[SPAWN_07,CAMPPOS_07] exec "scripts\startposition_execute.sqf";
[CAMPPOS_07] exec "scripts\startposition_crashsite.sqf";
exit;

#P8
[SPAWN_08,CAMPPOS_08] exec "scripts\startposition_execute.sqf";
[CAMPPOS_08] exec "scripts\startposition_crashsite.sqf";
exit;

#P9
[SPAWN_09,CAMPPOS_09] exec "scripts\startposition_execute.sqf";
[CAMPPOS_09] exec "scripts\startposition_crashsite.sqf";
exit;

#P10
[SPAWN_10,CAMPPOS_10] exec "scripts\startposition_execute.sqf";
[CAMPPOS_10] exec "scripts\startposition_crashsite.sqf";
exit;

#P11
[SPAWN_11,CAMPPOS_11] exec "scripts\startposition_execute.sqf";
[CAMPPOS_11] exec "scripts\startposition_crashsite.sqf";
exit;

#P12
[SPAWN_12,CAMPPOS_12] exec "scripts\startposition_execute.sqf";
[CAMPPOS_12] exec "scripts\startposition_crashsite.sqf";
exit;

#P13
[SPAWN_13,CAMPPOS_13] exec "scripts\startposition_execute.sqf";
[CAMPPOS_13] exec "scripts\startposition_crashsite.sqf";
exit;

#P14
[SPAWN_14,CAMPPOS_14] exec "scripts\startposition_execute.sqf";
[CAMPPOS_14] exec "scripts\startposition_crashsite.sqf";
exit;

#P15
[SPAWN_15,CAMPPOS_15] exec "scripts\startposition_execute.sqf";
[CAMPPOS_15] exec "scripts\startposition_crashsite.sqf";
exit;

#P16
[SPAWN_16,CAMPPOS_16] exec "scripts\startposition_execute.sqf";
[CAMPPOS_16] exec "scripts\startposition_crashsite.sqf";
exit;

#P17
[SPAWN_17,CAMPPOS_17] exec "scripts\startposition_execute.sqf";
[CAMPPOS_17] exec "scripts\startposition_crashsite.sqf";
exit;

#P18
[SPAWN_18,CAMPPOS_18] exec "scripts\startposition_execute.sqf";
[CAMPPOS_18] exec "scripts\startposition_crashsite.sqf";
exit;

#P19
[SPAWN_19,CAMPPOS_19] exec "scripts\startposition_execute.sqf";
[CAMPPOS_19] exec "scripts\startposition_crashsite.sqf";
exit;

#P20
[SPAWN_20,CAMPPOS_20] exec "scripts\startposition_execute.sqf";
[CAMPPOS_20] exec "scripts\startposition_crashsite.sqf";
exit;

#P21
[SPAWN_21,CAMPPOS_21] exec "scripts\startposition_execute.sqf";
[CAMPPOS_21] exec "scripts\startposition_crashsite.sqf";
exit;

#P22
[SPAWN_22,CAMPPOS_22] exec "scripts\startposition_execute.sqf";
[CAMPPOS_22] exec "scripts\startposition_crashsite.sqf";
exit;

#P23
[SPAWN_23,CAMPPOS_23] exec "scripts\startposition_execute.sqf";
[CAMPPOS_23] exec "scripts\startposition_crashsite.sqf";
exit;

#P24
[SPAWN_24,CAMPPOS_24] exec "scripts\startposition_execute.sqf";
[CAMPPOS_24] exec "scripts\startposition_crashsite.sqf";
exit;

#P25
[SPAWN_25,CAMPPOS_25] exec "scripts\startposition_execute.sqf";
[CAMPPOS_25] exec "scripts\startposition_crashsite.sqf";
exit;

#P26
[SPAWN_26,CAMPPOS_26] exec "scripts\startposition_execute.sqf";
[CAMPPOS_26] exec "scripts\startposition_crashsite.sqf";
exit;