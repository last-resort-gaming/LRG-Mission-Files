NATOGrunt = "LIB_GER_rifleman";
NATOOfficer = "LIB_GER_oberst";
NATOOfficer2 = "LIB_GER_hauptmann";
NATOBodyG = "SG_sturmtrooper_stggunner";
NATOCrew = "LIB_GER_tank_crew";
NATOUnarmed = "B_G_Survivor_F";
NATOMarksman = "LIB_GER_scout_sniper";
staticCrewMalos = "LIB_GER_gun_crew";

NATOmedic = "LIB_GER_medic";
NATOAA = "LIB_GER_stggunner";
NATOAT = "LIB_GER_AT_soldier";
NATOMortarMan = "B_support_Mort_F";
NATOEngineer = "LIB_GER_sapper";
NATOMGSupp = "B_support_AMG_F";
NATOMortSupp = "B_support_AMort_F";

NATOMG = "LIB_MG42_Lafette_Deployed";
NATOMortar = "LIB_GrWr34_g";
staticATmalos = "LIB_FlaK_36";
staticAAmalos = "LIB_Flakvierling_38";
NATOPilot = "LIB_GER_pilot";
vehNATOLightArmed = ["LIB_Kfz1_MG42_sernyt","LIB_Kfz1_MG42_camo","LIB_Kfz1_MG42"];
vehNATOLightUnarmed = ["LIB_Kfz1_Hood_sernyt","LIB_Kfz1_sernyt"];
vehNATOTrucks = ["LIB_OpelBlitz_Open_Y_Camo","LIB_OpelBlitz_Tent_Y_Camo"];
vehNATOAmmoTruck = "LIB_OpelBlitz_Ammo";
vehNATORepairTruck = "LIB_OpelBlitz_Parm";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
vehNATOAPC = ["LIB_SdKfz251","LIB_DAK_SdKfz251_FFV","LIB_DAK_M3_Halftrack"];
vehNATOTank = "LIB_PzKpfwVI_B_tarn51d";
vehNATOAA = "LIB_FlakPanzerIV_Wirbelwind";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
vehNATOBoat = "B_T_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_T_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
vehNATOPlane = "LIB_ARR_Ju87";
vehNATOPlaneAA = "LIB_FW190F8";
vehNATOPatrolHeli = "LIB_C47_RAF";
vehNATOTransportHelis = ["LIB_C47_RAF","LIB_C47_RAF","LIB_C47_RAF","LIB_C47_RAF"];
vehNATOAttackHelis = ["LIB_Ju87"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA];
vehNATOUAV = "not_supported";
vehNATOUAVSmall = "not_supported";
vehNATOMRLS = "LIB_SdKfz124";
vehNATOMRLSMags = "LIB_20x_Shell_105L28_Gr39HlC";
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck,"LIB_OpelBlitz_Fuel","LIB_OpelBlitz_Ambulance", vehNATORepairTruck,"LIB_SdKfz_7"];
vehNATOBike = "B_T_Quadbike_01_F";
NATOFlag = "LIB_FlagCarrier_GER";
NATOFlagTexture = "ww2\core_t\if_decals_t\german\flag_ger_co.paa";
NATOAmmobox = "B_supplyCrate_F";
//cfgNATOInf = (configfile >> "CfgGroups" >> "West" >> "BLU_T_F" >> "Infantry");///
gruposNATOSentry = ["LIB_GER_Soldier3_base","LIB_GER_ober_rifleman"];//"B_T_InfSentry";//
gruposNATOSniper = ["LIB_GER_scout_sniper","LIB_GER_soldier_camo5_base"];
gruposNATOsmall = [gruposNATOSentry,gruposNATOSniper]; //[gruposNATOSentry,"B_T_SniperTeam","B_T_ReconSentry"];///
gruposNATOAA = ["LIB_GER_unterofficer",NATOAA,NATOAA,"LIB_GER_radioman"];
gruposNATOAT = ["LIB_GER_unterofficer",NATOAT,NATOAT,"LIB_GER_radioman"];
gruposNATOmid = [["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_scout_ober_rifleman","LIB_GER_AT_grenadier"],gruposNATOAA,gruposNATOAT];//["B_T_InfTeam","B_T_InfTeam_AA","B_T_InfTeam_AT"];///
NATOSquad = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_Soldier2_base","LIB_GER_scout_ober_rifleman",NATOAA,NATOAT,"LIB_GER_radioman",NATOmedic];

NATOSquadAA = NATOSquad;
NATOSquadMortar = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_Soldier2_base","LIB_GER_scout_ober_rifleman",NATOMortarMan,NATOMortSupp,"LIB_GER_radioman",NATOmedic];
NATOSquadMG = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_Soldier2_base","LIB_GER_scout_ober_rifleman",staticCrewMalos,NATOMGSupp,"LIB_GER_radioman",NATOmedic];
NATOSquadEng = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_smgunner","LIB_GER_AT_grenadier","LIB_GER_ober_rifleman",NATOEngineer,"LIB_GER_radioman",NATOmedic];
NATOSquadAT = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_Soldier2_base","LIB_GER_scout_ober_rifleman",NATOAT,NATOAT,"LIB_GER_radioman",NATOmedic];

NATOSpecOp = ["LIB_FSJ_NCO","LIB_FSJ_Mgunner","LIB_FSJ_Soldier_2","LIB_FSJ_AT_soldier","LIB_FSJ_Soldier_2","LIB_FSJ_sapper","LIB_FSJ_radioman","LIB_FSJ_medic"];
gruposNATOSquad = [NATOSquad,NATOSquadAA,NATOSquadEng,NATOSquadAT,NATOSquadMortar,NATOSquadMG]; //[NATOSquad,"B_T_InfSquad_Weapons"];///
factionMachoMalos = "LIB_FSJ";


soporteStaticNATOB = "not_supported";
ATStaticNATOB = "not_supported";
MGStaticNATOB = "LIB_MG42";//primary
soporteStaticNATOB2 = "LIB_Laffete_Tripod";//secondary
AAStaticNATOB = "not_supported";
MortStaticNATOB = "LIB_GrWr34_Barrel_g";//secondary
soporteStaticNATOB3 = "LIB_GrWr34_Tripod_g";//secondary

armasNATO append ["LIB_MP40","LIB_MP44","LIB_K98","LIB_G43","LIB_MG42","LIB_MP40","LIB_K98ZF39","LIB_RPzB","LIB_M1908"];//
municionNATO append ["LIB_32Rnd_9x19","LIB_NB39","LIB_30Rnd_792x33","LIB_Shg24","LIB_5Rnd_792x57","LIB_10Rnd_792x57","LIB_50Rnd_792x57","LIB_1Rnd_RPzB","LIB_8Rnd_9x19_P08","LIB_Pwm"];//possible ammo that spawn in NATO ammoboxes
flagNATOmrk = "LIB_faction_WEHRMACHT";

nameMalos = "Wehrmacht";
if (isServer) then {"NATO_carrier" setMarkerText "Wehrmacht Reinforcements"};

{cascos pushBackUnique (getUnitLoadout _x select 6)} forEach NATOSquad;
needToRedress append [NATOUnarmed,staticCrewMalos,NATOMortarMan,NATOMGSupp,NATOMortSupp];