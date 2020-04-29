// INFANTRY SKILL
_InfskillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.2,         // spotDistance
0.3,        // spotTime
0.7,        // courage
0.3,        // reloadSpeed
0.3,        // commanding
0.2        // general
];


// ARMOUR SKILL
_ArmSkillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.5,         // spotDistance
0.5,        // spotTime
1,        // courage
0.7,        // reloadSpeed
0.7,        // commanding
0.6        // general
];


// LIGHT VEHICLE skill
_LigSkillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.5,        // aimingSpeed
0.5,         // spotDistance
0.5,        // spotTime
1,        // courage
0.7,        // reloadSpeed
0.7,        // commanding
0.5        // general
];


// HELICOPTER SKILL
_AIRskillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.4,         // spotDistance
0.4,        // spotTime
1,        // courage
1,        // reloadSpeed
1,        // commanding
1        // general
];


// STATIC SKILL
_STAskillSet = [
0.25,        // aimingAccuracy
0.45,        // aimingShake
0.6,        // aimingSpeed
0.4,         // spotDistance
0.4,        // spotTime
0.7,        // courage
0.4,        // reloadSpeed
0.4,        // commanding
0.4        // general
];

server setvariable ["INFskill",_InfskillSet];
server setvariable ["ARMskill",_ArmSkillSet];
server setvariable ["LIGskill",_LigSkillSet];
server setvariable ["AIRskill",_AIRskillSet];
server setvariable ["STAskill",_STAskillSet];