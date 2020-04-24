private ["_heli", "_reloadtime", "_smoke"];

if (!(BACO_ammoSuppAvail)) exitWith {
	hint "Supply Crate is not currently available"
};

BACO_ammoSuppAvail = FALSE; publicVariable "BACO_ammoSuppAvail";

//------------------------------------------------------- CONFIG

_heli = _this select 0;
_crateType =  "B_CargoNet_01_ammo_F";		//ammocrate class for blufor, feel free to change to whichever box you desire
_reloadtime = 60;  						// time before next ammo drop is available to use, default 600 or 480

//--------------------------------------------------------- MEAT AND POTATOES

Supply_Ammo = _crateType createVehicle (getMarkerPos "Ammo_Supply_drop");; publicVariable "Supply_Ammo";

//---------------------------------------------------- CLEAR CRATE

clearWeaponCargoGlobal Supply_Ammo;
clearMagazineCargoGlobal Supply_Ammo;
clearItemCargoGlobal Supply_Ammo;
clearBackpackCargoGlobal Supply_Ammo;

//---------------------------------------------------- CRATE CONTENTS
Supply_Ammo additemCargoGlobal ["FirstAidKit", 40];
Supply_Ammo additemCargoGlobal ["MediKit", 4];
Supply_Ammo additemCargoGlobal ["Toolkit", 4];
Supply_Ammo additemCargoGlobal ["Rangefinder", 5];
Supply_Ammo additemCargoGlobal ["Laserdesignator", 2];
Supply_Ammo additemCargoGlobal ["optic_NVS", 10];
Supply_Ammo additemCargoGlobal ["NVGoggles", 10];
Supply_Ammo additemCargoGlobal ["MineDetector", 2];
Supply_Ammo addMagazineCargoGlobal ["Laserbatteries", 4];
Supply_Ammo addMagazineCargoGlobal ["30Rnd_545x39_Mag_Tracer_F", 20];
Supply_Ammo addMagazineCargoGlobal ["30Rnd_556x45_Stanag_red", 20];
Supply_Ammo addMagazineCargoGlobal ["150Rnd_556x45_Drum_Mag_Tracer_F", 10];
Supply_Ammo addMagazineCargoGlobal ["200Rnd_556x45_Box_Tracer_Red_F", 10];
Supply_Ammo addMagazineCargoGlobal ["20Rnd_650x39_Cased_Mag_F", 10];
Supply_Ammo addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 40];
Supply_Ammo addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 10];
Supply_Ammo addMagazineCargoGlobal ["10Rnd_762x54_Mag", 20];
Supply_Ammo addMagazineCargoGlobal ["20Rnd_762x51_Mag", 40];
Supply_Ammo addMagazineCargoGlobal ["30Rnd_762x39_Mag_Tracer_Green_F", 20];
Supply_Ammo addMagazineCargoGlobal ["150Rnd_762x51_Box", 10];
Supply_Ammo addMagazineCargoGlobal ["130Rnd_338_Mag", 10];
Supply_Ammo addMagazineCargoGlobal ["10Rnd_338_Mag", 10];
Supply_Ammo addMagazineCargoGlobal ["30Rnd_9x21_Mag_SMG_02_Tracer_Red", 10];
Supply_Ammo addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 10];
Supply_Ammo addMagazineCargoGlobal ["5Rnd_127x108_Mag", 10];
Supply_Ammo addMagazineCargoGlobal ["7Rnd_408_Mag", 15];
Supply_Ammo addMagazineCargoGlobal ["HandGrenade", 10];
Supply_Ammo addMagazineCargoGlobal ["SmokeShell", 50];
Supply_Ammo addMagazineCargoGlobal ["SmokeShellGreen", 5];
Supply_Ammo addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 15];
Supply_Ammo addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", 5];
Supply_Ammo addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 10];
Supply_Ammo addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 5];
Supply_Ammo addMagazineCargoGlobal ["RPG32_HE_F", 2];
Supply_Ammo addMagazineCargoGlobal ["Titan_AT", 8];
Supply_Ammo addMagazineCargoGlobal ["Titan_AA", 5];

sleep _reloadtime; BACO_ammoSuppAvail = TRUE; publicVariable "BACO_ammoSuppAvail";