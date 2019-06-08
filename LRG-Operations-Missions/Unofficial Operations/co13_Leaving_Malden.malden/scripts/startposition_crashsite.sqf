if (!isServer) exitWith {};
? damage startdummy2 >= 1 : exit

_camppos = (_this select 0);

~2
crash_wreck_01 = createVehicle ["Land_Wreck_Plane_Transport_01_F", [(getPos _camppos select 0) +0.7,(getPos _camppos select 1) -1.2, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_01 enableSimulationGlobal false;
crash_wreck_01 setDir 233.404;
crash_wreck_01 setVectorUp surfaceNormal [(getPos _camppos select 0) +0.7,(getPos _camppos select 1) -1.2, 0];

crash_wreck_02 = createVehicle ["CraterLong", [(getPos _camppos select 0) -2,(getPos _camppos select 1) -1, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_02 enableSimulationGlobal false;
crash_wreck_02 setDir 53.78;
crash_wreck_02 setVectorUp surfaceNormal [(getPos _camppos select 0) -2,(getPos _camppos select 1) -1, 0];

crash_wreck_03 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -11.5,(getPos _camppos select 1) -8, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_03 enableSimulationGlobal false;
crash_wreck_03 setDir 237.214;
crash_wreck_03 setVectorUp surfaceNormal [(getPos _camppos select 0) -11.5,(getPos _camppos select 1) -8, 0];

crash_wreck_04 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -14.9,(getPos _camppos select 1) -9.9, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_04 enableSimulationGlobal false;
crash_wreck_04 setDir 57.989;
crash_wreck_04 setVectorUp surfaceNormal [(getPos _camppos select 0) -14.9,(getPos _camppos select 1) -9.9, 0];

crash_wreck_05 = createVehicle ["Land_HistoricalPlaneWreck_02_wing_left_F", [(getPos _camppos select 0) -36,(getPos _camppos select 1) -37, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_05 enableSimulationGlobal false;
crash_wreck_05 setDir 184.432;
crash_wreck_05 setVectorUp surfaceNormal [(getPos _camppos select 0) -36,(getPos _camppos select 1) -37, 0];

crash_wreck_06 = createVehicle ["Land_HistoricalPlaneDebris_04_F", [(getPos _camppos select 0) +3,(getPos _camppos select 1) -14, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_06 enableSimulationGlobal false;
crash_wreck_06 setDir 87.253;
crash_wreck_06 setVectorUp surfaceNormal [(getPos _camppos select 0) +3,(getPos _camppos select 1) -14, 0];

crash_wreck_07 = createVehicle ["Land_HistoricalPlaneDebris_02_F", [(getPos _camppos select 0) -7,(getPos _camppos select 1) -11, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_07 enableSimulationGlobal false;
crash_wreck_07 setDir 87.773;
crash_wreck_07 setVectorUp surfaceNormal [(getPos _camppos select 0) -7,(getPos _camppos select 1) -11, 0];

crash_wreck_08 = createVehicle ["Land_HistoricalPlaneDebris_03_F", [(getPos _camppos select 0) -13,(getPos _camppos select 1) +3, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_08 enableSimulationGlobal false;
crash_wreck_08 setDir 219.313;
crash_wreck_08 setVectorUp surfaceNormal [(getPos _camppos select 0) -13,(getPos _camppos select 1) +3, 0];

crash_wreck_09 = createVehicle ["Land_HistoricalPlaneDebris_04_F", [(getPos _camppos select 0) -22,(getPos _camppos select 1) -7.5, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_09 enableSimulationGlobal false;
crash_wreck_09 setDir 144.691;
crash_wreck_09 setVectorUp surfaceNormal [(getPos _camppos select 0) -22,(getPos _camppos select 1) -7.5, 0];

crash_wreck_10 = createVehicle ["Land_HistoricalPlaneDebris_01_F", [(getPos _camppos select 0) -35,(getPos _camppos select 1) -17, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_10 enableSimulationGlobal false;
crash_wreck_10 setDir 111.503;
crash_wreck_10 setVectorUp surfaceNormal [(getPos _camppos select 0) -35,(getPos _camppos select 1) -17, 0];

crash_wreck_11 = createVehicle ["Land_HistoricalPlaneDebris_02_F", [(getPos _camppos select 0) -22,(getPos _camppos select 1) -20, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_11 enableSimulationGlobal false;
crash_wreck_11 setDir 86.916;
crash_wreck_11 setVectorUp surfaceNormal [(getPos _camppos select 0) -22,(getPos _camppos select 1) -20, 0];

crash_wreck_12 = createVehicle ["Land_HistoricalPlaneDebris_01_F", [(getPos _camppos select 0) -10,(getPos _camppos select 1) -5, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_12 enableSimulationGlobal false;
crash_wreck_12 setDir 111.503;
crash_wreck_12 setVectorUp surfaceNormal [(getPos _camppos select 0) -10,(getPos _camppos select 1) -5, 0];

~2
crash_wreck_13 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -42,(getPos _camppos select 1) -27, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_13 enableSimulationGlobal false;
crash_wreck_13 setDir 237.214;
crash_wreck_13 setVectorUp surfaceNormal [(getPos _camppos select 0) -42,(getPos _camppos select 1) -27, 0];

crash_wreck_14 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -47,(getPos _camppos select 1) -30, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_14 enableSimulationGlobal false;
crash_wreck_14 setDir 57.989;
crash_wreck_14 setVectorUp surfaceNormal [(getPos _camppos select 0) -47,(getPos _camppos select 1) -30, 0];

crash_wreck_15 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -52,(getPos _camppos select 1) -33, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_15 enableSimulationGlobal false;
crash_wreck_15 setDir 237.214;
crash_wreck_15 setVectorUp surfaceNormal [(getPos _camppos select 0) -52,(getPos _camppos select 1) -33, 0];

crash_wreck_16 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -29,(getPos _camppos select 1) -19, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_16 enableSimulationGlobal false;
crash_wreck_16 setDir 237.214;
crash_wreck_16 setVectorUp surfaceNormal [(getPos _camppos select 0) -29,(getPos _camppos select 1) -19, 0];

crash_wreck_17 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -32,(getPos _camppos select 1) -20.5, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_17 enableSimulationGlobal false;
crash_wreck_17 setDir 57.989;
crash_wreck_17 setVectorUp surfaceNormal [(getPos _camppos select 0) -32,(getPos _camppos select 1) -20.5, 0];

crash_wreck_18 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -74,(getPos _camppos select 1) -46, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_18 enableSimulationGlobal false;
crash_wreck_18 setDir 237.214;
crash_wreck_18 setVectorUp surfaceNormal [(getPos _camppos select 0) -74,(getPos _camppos select 1) -46, 0];

crash_wreck_19 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -77,(getPos _camppos select 1) -48, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_19 enableSimulationGlobal false;
crash_wreck_19 setDir 57.989;
crash_wreck_19 setVectorUp surfaceNormal [(getPos _camppos select 0) -77,(getPos _camppos select 1) -48, 0];

crash_wreck_20 = createVehicle ["CraterLong_small", [(getPos _camppos select 0) -24,(getPos _camppos select 1) -16, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_20 enableSimulationGlobal false;
crash_wreck_20 setDir 57.989;
crash_wreck_20 setVectorUp surfaceNormal [(getPos _camppos select 0) -24,(getPos _camppos select 1) -16, 0];

crash_wreck_21 = createVehicle ["CraterLong", [(getPos _camppos select 0) +8,(getPos _camppos select 1) +6.5, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_21 enableSimulationGlobal false;
crash_wreck_21 setDir 53.78;
crash_wreck_21 setVectorUp surfaceNormal [(getPos _camppos select 0) +8,(getPos _camppos select 1) +6.5, 0];

crash_wreck_22 = createVehicle ["Land_HistoricalPlaneDebris_03_F", [(getPos _camppos select 0) -63,(getPos _camppos select 1) -34, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_22 enableSimulationGlobal false;
crash_wreck_22 setDir 219.313;
crash_wreck_22 setVectorUp surfaceNormal [(getPos _camppos select 0) -63,(getPos _camppos select 1) -34, 0];

crash_wreck_23 = createVehicle ["Land_HistoricalPlaneDebris_01_F", [(getPos _camppos select 0) -37,(getPos _camppos select 1) -27, 0], [], 0, "CAN_COLLIDE"];
crash_wreck_23 enableSimulationGlobal false;
crash_wreck_23 setDir 111.503;
crash_wreck_23 setVectorUp surfaceNormal [(getPos _camppos select 0) -37,(getPos _camppos select 1) -27, 0];

~2
_unit1 = crash1 createUnit ["C_man_1_1_F", _camppos, [], 0, "none"];
_unit2 = crash1 createUnit ["C_man_1_1_F", _camppos, [], 0, "none"];
_unit3 = crash1 createUnit ["C_man_1_1_F", _camppos, [], 0, "none"];
_unit4 = crash1 createUnit ["C_man_1_1_F", _camppos, [], 0, "none"];
_unit1 setPos [(getPos _camppos select 0)-14*sin(random 359)-10,(getPos _camppos select 1)-13*cos(random 359)-8,1+(random 20)];
_unit2 setPos [(getPos _camppos select 0)-16*sin(random 359)-5,(getPos _camppos select 1)-15*cos(random 359)-30,1+(random 30)];
_unit3 setPos [(getPos _camppos select 0)-26*sin(random 359)-7,(getPos _camppos select 1)-25*cos(random 359)-15,1+(random 20)];
_unit4 setPos [(getPos _camppos select 0)-36*sin(random 359)-3,(getPos _camppos select 1)-5*cos(random 359)-8,1+(random 30)];
_unit1 disableAI "MOVE";
_unit2 disableAI "MOVE";
_unit3 disableAI "MOVE";
_unit4 disableAI "MOVE";
_unit1 setDir (random 359);
_unit2 setDir (random 359);
_unit3 setDir (random 359);
_unit4 setDir (random 359);
[_unit1] exec "cos\random_Uniform.sqf";
[_unit2] exec "cos\random_Uniform.sqf";
[_unit3] exec "cos\random_Uniform.sqf";
[_unit4] exec "cos\random_Uniform.sqf";

~1
_unit1 setdammage 1;
_unit2 setdammage 1;
_unit3 setdammage 1;
_unit4 setdammage 1;

~2
_logicCenter = createCenter sideLogic;
_logicGroup = createGroup _logicCenter;

_myLogicObject1 = _logicGroup createUnit ["ModuleEffectsFire_F", [(getPos _camppos select 0) +0.7,(getPos _camppos select 1) -1.2, 0.3], [], 0, "CAN_COLLIDE"];
_myLogicObject1 setVariable ["ColorRed",0.4,true];
_myLogicObject1 setVariable ["ColorGreen",0.5,true];
_myLogicObject1 setVariable ["ColorBlue",0.3,true];
_myLogicObject1 setVariable ["Timeout",660,true];
_myLogicObject1 setVariable ["ParticleLifeTime",4,true];
_myLogicObject1 setVariable ["ParticleDensity",30,true];
_myLogicObject1 setVariable ["ParticleSize",1.6,true];
_myLogicObject1 setVariable ["ParticleSpeed",0.9,true];
_myLogicObject1 setVariable ["EffectSize",10,true];
_myLogicObject1 setVariable ["ParticleOrientation",0.1,true];
_myLogicObject1 setVariable ["FireDamage",4,true];

_myLogicObject2 = _logicGroup createUnit ["ModuleEffectsFire_F", [(getPos _camppos select 0) -36,(getPos _camppos select 1) -37, 0.1], [], 0, "CAN_COLLIDE"];
_myLogicObject2 setVariable ["ColorRed",0.4,true];
_myLogicObject2 setVariable ["ColorGreen",0.6,true];
_myLogicObject2 setVariable ["ColorBlue",0.4,true];
_myLogicObject2 setVariable ["Timeout",420,true];
_myLogicObject2 setVariable ["ParticleLifeTime",2,true];
_myLogicObject2 setVariable ["ParticleDensity",15,true];
_myLogicObject2 setVariable ["ParticleSize",1,true];
_myLogicObject2 setVariable ["ParticleSpeed",0.9,true];
_myLogicObject2 setVariable ["EffectSize",4,true];
_myLogicObject2 setVariable ["ParticleOrientation",0.1,true];
_myLogicObject2 setVariable ["FireDamage",2,true];

_myLogicObject3 = _logicGroup createUnit ["ModuleEffectsFire_F", [(getPos _camppos select 0) -22,(getPos _camppos select 1) -7.5, 0.1], [], 0, "CAN_COLLIDE"];
_myLogicObject3 setVariable ["ColorRed",0.4,true];
_myLogicObject3 setVariable ["ColorGreen",0.5,true];
_myLogicObject3 setVariable ["ColorBlue",0.3,true];
_myLogicObject3 setVariable ["Timeout",320,true];
_myLogicObject3 setVariable ["ParticleLifeTime",1,true];
_myLogicObject3 setVariable ["ParticleDensity",7,true];
_myLogicObject3 setVariable ["ParticleSize",0.8,true];
_myLogicObject3 setVariable ["ParticleSpeed",0.9,true];
_myLogicObject3 setVariable ["EffectSize",2,true];
_myLogicObject3 setVariable ["ParticleOrientation",0.1,true];
_myLogicObject3 setVariable ["FireDamage",1,true];

_myLogicObject4 = _logicGroup createUnit ["ModuleEffectsSmoke_F", [(getPos _camppos select 0) +0.7,(getPos _camppos select 1) -1.2, 3], [], 0, "CAN_COLLIDE"];
_myLogicObject4 setVariable ["ColorRed",0.4,true];
_myLogicObject4 setVariable ["ColorGreen",0.5,true];
_myLogicObject4 setVariable ["ColorBlue",0.5,true];
_myLogicObject4 setVariable ["ColorAlpha",0.9,true];
_myLogicObject4 setVariable ["Timeout",780,true];
_myLogicObject4 setVariable ["ParticleLifeTime",62,true];
_myLogicObject4 setVariable ["ParticleDensity",15,true];
_myLogicObject4 setVariable ["ParticleLifting",1,true];
_myLogicObject4 setVariable ["Expansion",1,true];
_myLogicObject4 setVariable ["ParticleSize",1.3,true];
_myLogicObject4 setVariable ["ParticleSpeed",1,true];
_myLogicObject4 setVariable ["EffectSize",2.4,true];
_myLogicObject4 setVariable ["WindEffect",0.1,true];

_myLogicObject5 = _logicGroup createUnit ["ModuleEffectsSmoke_F", [(getPos _camppos select 0) -36,(getPos _camppos select 1) -37, 1.5], [], 0, "CAN_COLLIDE"];
_myLogicObject5 setVariable ["ColorRed",0.4,true];
_myLogicObject5 setVariable ["ColorGreen",0.4,true];
_myLogicObject5 setVariable ["ColorBlue",0.5,true];
_myLogicObject5 setVariable ["ColorAlpha",0.6,true];
_myLogicObject5 setVariable ["Timeout",540,true];
_myLogicObject5 setVariable ["ParticleLifeTime",7,true];
_myLogicObject5 setVariable ["ParticleDensity",5,true];
_myLogicObject5 setVariable ["ParticleLifting",1,true];
_myLogicObject5 setVariable ["Expansion",0.8,true];
_myLogicObject5 setVariable ["ParticleSize",0.6,true];
_myLogicObject5 setVariable ["ParticleSpeed",1,true];
_myLogicObject5 setVariable ["EffectSize",0.4,true];
_myLogicObject5 setVariable ["WindEffect",0.1,true];

_myLogicObject6 = _logicGroup createUnit ["ModuleEffectsSmoke_F", [(getPos _camppos select 0) -22,(getPos _camppos select 1) -7.5, 1], [], 0, "CAN_COLLIDE"];
_myLogicObject6 setVariable ["ColorRed",0.4,true];
_myLogicObject6 setVariable ["ColorGreen",0.4,true];
_myLogicObject6 setVariable ["ColorBlue",0.5,true];
_myLogicObject6 setVariable ["ColorAlpha",0.5,true];
_myLogicObject6 setVariable ["Timeout",440,true];
_myLogicObject6 setVariable ["ParticleLifeTime",5,true];
_myLogicObject6 setVariable ["ParticleDensity",3,true];
_myLogicObject6 setVariable ["ParticleLifting",1,true];
_myLogicObject6 setVariable ["Expansion",0.5,true];
_myLogicObject6 setVariable ["ParticleSize",0.3,true];
_myLogicObject6 setVariable ["ParticleSpeed",1,true];
_myLogicObject6 setVariable ["EffectSize",0.2,true];
_myLogicObject6 setVariable ["WindEffect",0.1,true];

~5
feuer_sound1 setPos [(getPos _camppos select 0) +0.7,(getPos _camppos select 1) -1.2, 1.5];
feuer_sound2 setPos [(getPos _camppos select 0) -36,(getPos _camppos select 1) -37, 0.7];
feuer_sound3 setPos [(getPos _camppos select 0) -22,(getPos _camppos select 1) -7.5, 0.5];

bomb_start_plane setPos (getPos _camppos);
moveto_start_trg setPos (getPos _camppos);


~680


#check_player_close
~120
if ({_x distance _camppos <= 3000} count playableUnits > 0) then {goto "check_player_close"} else {goto "delete_vehicles"};

#delete_vehicles
deleteVehicle crash_wreck_01;
deleteVehicle crash_wreck_02;
deleteVehicle crash_wreck_03;
deleteVehicle crash_wreck_04;
deleteVehicle crash_wreck_05;
deleteVehicle crash_wreck_06;
~5
deleteVehicle crash_wreck_07;
deleteVehicle crash_wreck_08;
deleteVehicle crash_wreck_09;
deleteVehicle crash_wreck_10;
deleteVehicle crash_wreck_11;
deleteVehicle crash_wreck_12;
~5
deleteVehicle crash_wreck_13;
deleteVehicle crash_wreck_14;
deleteVehicle crash_wreck_15;
deleteVehicle crash_wreck_16;
deleteVehicle crash_wreck_17;
deleteVehicle crash_wreck_18;
~5
deleteVehicle crash_wreck_19;
deleteVehicle crash_wreck_20;
deleteVehicle crash_wreck_21;
deleteVehicle crash_wreck_22;
deleteVehicle crash_wreck_23;
~5
deleteVehicle _unit1;
deleteVehicle _unit2;
deleteVehicle _unit3;
deleteVehicle _unit4;
deleteVehicle box1_low;
deleteVehicle box1_normal;
deleteVehicle box1_high;

exit;