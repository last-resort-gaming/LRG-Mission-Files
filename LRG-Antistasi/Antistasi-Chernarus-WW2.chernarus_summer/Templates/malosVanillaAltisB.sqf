NATOGrunt = "I_Soldier_F";
NATOOfficer = "I_Officer_F";
NATOOfficer2 = "I_G_officer_F";
NATOBodyG = "I_Soldier_SL_F";
NATOCrew = "I_Crew_F";
NATOUnarmed = "I_G_Survivor_F";
NATOMarksman = "I_Soldier_M_F";
staticCrewMalos = "I_support_MG_F";

NATOmedic = "I_medic_F";
NATOAA = "I_Soldier_AA_F";
NATOAT = "I_soldier_AT_F";
NATOMortarMan = "I_support_Mort_F";
NATOEngineer = "I_engineer_F";
NATOMGSupp = "I_support_AMG_F";
NATOMortSupp = "I_support_AMort_F";

NATOMG = "I_HMG_01_high_F";
NATOMortar = "I_Mortar_01_F";
staticATmalos = "I_static_AT_F";
staticAAmalos = "I_static_AA_F";
NATOPilot = "I_Helipilot_F";
vehNATOLightArmed = ["I_MRAP_03_hmg_F"];
vehNATOLightUnarmed = ["I_MRAP_03_F"];
vehNATOTrucks = ["I_Truck_02_covered_F","I_Truck_02_transport_F"];
vehNATOAmmoTruck = "I_Truck_02_ammo_F";
vehNATORepairTruck = "I_Truck_02_box_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
vehNATOAPC = ["I_APC_Wheeled_03_cannon_F"];
vehNATOTank = "I_MBT_03_cannon_F";
vehNATOAA = "I_LT_01_AA_F";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
vehNATOBoat = "I_Boat_Armed_01_minigun_F";
vehNATORBoat = "I_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
vehNATOPlane = "I_Plane_Fighter_03_dynamicLoadout_F";
vehNATOPlaneAA = "I_Plane_Fighter_04_F";
vehNATOPatrolHeli = "I_Heli_light_03_unarmed_F";
vehNATOTransportHelis = ["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F"];
vehNATOAttackHelis = ["I_Heli_light_03_dynamicLoadout_F"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA];
vehNATOUAV = "I_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "I_UAV_01_F";
vehNATOMRLS = "I_Truck_02_MRL_F";
vehNATOMRLSMags = "12Rnd_230mm_rockets";//[R Alpha 1-2:2 (Alberto),"rockets_230mm_GAT","rockets_230mm_GAT","Mode_1","R_230mm_HE","12Rnd_230mm_rockets",41: rocket_230mm_f.p3d,R Alpha 1-2:2 (Alberto)]
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "I_Truck_02_fuel_F", "I_Truck_02_medical_F", vehNATORepairTruck,"I_APC_tracked_03_cannon_F"];
vehNATOBike = "I_Quadbike_01_F";
NATOFlag = "Flag_AltisColonial_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_AltisColonial_CO.paa";
NATOAmmobox = "I_supplyCrate_F";
//cfgNATOInf = (configfile >> "CfgGroups" >> "West" >> "BLU_T_F" >> "Infantry");///
gruposNATOSentry = ["I_Soldier_GL_F","I_soldier_F"];//"B_T_InfSentry";//
gruposNATOSniper = ["I_sniper_F","I_spotter_F"];
gruposNATOsmall = [gruposNATOSentry,gruposNATOSniper]; //[gruposNATOSentry,"B_T_SniperTeam","B_T_ReconSentry"];///
gruposNATOAA = ["I_Soldier_TL_F",NATOAA,NATOAA,"I_Soldier_AAA_F"];
gruposNATOAT = ["I_soldier_TL_F",NATOAT,NATOAT,"I_soldier_AAT_F"];
gruposNATOmid = [["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F"],gruposNATOAA,gruposNATOAT];//["B_T_InfTeam","B_T_InfTeam_AA","B_T_InfTeam_AT"];///
NATOSquad = ["I_soldier_SL_F",NATOGrunt,"I_soldier_LAT_F","I_Soldier_GL_F","I_Soldier_M_F","I_soldier_AR_F","I_soldier_A_F",NATOmedic];

NATOSquadAA = ["I_soldier_SL_F",NATOGrunt,"I_soldier_TL_F","I_soldier_AR_F","I_soldier_A_F",NATOAA,"I_soldier_AAA_F",NATOmedic];
NATOSquadMortar = ["I_soldier_SL_F",NATOGrunt,"I_soldier_TL_F","I_soldier_AR_F","I_soldier_A_F",NATOMortarMan,NATOMortSupp,NATOmedic];
NATOSquadMG = ["I_soldier_SL_F",NATOGrunt,"I_soldier_TL_F","I_soldier_AR_F","I_soldier_A_F",staticCrewMalos,NATOMGSupp,NATOmedic];
NATOSquadEng = ["I_soldier_SL_F",NATOGrunt,"I_soldier_TL_F","I_soldier_AR_F","I_soldier_A_F",NATOEngineer,NATOEngineer,NATOmedic];
NATOSquadAT = ["I_soldier_SL_F",NATOGrunt,"I_soldier_TL_F","I_soldier_AR_F","I_soldier_A_F",NATOAT,"I_soldier_AAT_F",NATOmedic];

NATOSpecOp = ["I_soldier_SL_F",NATOGrunt,"I_soldier_LAT_F","I_Soldier_GL_F","I_soldier_TL_F","I_soldier_AR_F","I_soldier_A_F",NATOmedic];//(configfile >> "CfgGroups" >> "West" >> "BLU_CTRG_F" >> "Infantry" >> "CTRG_InfSquad");
factionMachoMalos = "";
gruposNATOSquad = [NATOSquad,NATOSquadAA,NATOSquadMortar,NATOSquadMG,NATOSquadEng,NATOSquadAT]; //[NATOSquad,"B_T_InfSquad_Weapons"];///"B_engineer_F"


soporteStaticNATOB = "I_HMG_01_support_F";
ATStaticNATOB = "I_AT_01_weapon_F";
MGStaticNATOB = "I_HMG_01_high_weapon_F";
soporteStaticNATOB2 = "I_HMG_01_support_high_F";
AAStaticNATOB = "I_AA_01_weapon_F";
MortStaticNATOB = "I_Mortar_01_weapon_F";
soporteStaticNATOB3 = "I_Mortar_01_support_F";

armasNATO append ["launch_NLAW_F","arifle_Mk20_F","arifle_Mk20C_F","LMG_Mk200_F","arifle_Mk20_GL_F","srifle_EBR_F","arifle_SDAR_F","srifle_GM6_F"];
municionNATO append ["30Rnd_556x45_Stanag","200Rnd_65x39_cased_Box","20Rnd_556x45_UW_mag","20Rnd_762x51_Mag","5Rnd_127x108_Mag","1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","1Rnd_Smoke_Grenade_shell","3Rnd_HE_Grenade_shell","HandGrenade"];//possible ammo that spawn in NATO ammoboxes
flagNATOmrk = "flag_AltisColonial";

nameMalos = "AAF";
if (isServer) then {"NATO_carrier" setMarkerText "AAF Carrier"};