

_u = _this select 0;

clearWeaponCargoGlobal _u;
clearMagazineCargoGlobal _u;
clearItemCargoGlobal _u;
clearBackpackCargoGlobal _u;


//---------------------------------------------------- CRATE CONTENTS

//-------- Items

_AmmoItems = [

["ACE_fieldDressing", 20],
["ACE_elasticBandage", 20],
["ACE_packingBandage", 20],
["ACE_quikclot", 20],
["ACE_bloodIV_500", 10],
["ACE_epinephrine", 10],
["ACE_morphine", 20],
["ACE_tourniquet", 20],
["ACE_surgicalKit", 2],
["UK3CB_BAF_HMNVS", 8],
["ACE_CableTie", 8],
["ACE_EarPlugs", 8],
["ACE_Flashlight_XL50", 8],
["ACE_MapTools", 8],
["ACE_IR_Strobe_Item", 8],
["ACE_RangeTable_82mm",8]
];

{_u additemCargoGlobal _x;} foreach _AmmoItems;

//-------- Magazines

_AmmoMagazines = [

["UK3CB_BAF_SmokeShell",20],
["HandGrenade",10],
["DemoCharge_Remote_Mag",4],
["UK3CB_BAF_556_30Rnd_T",30],
["UK3CB_BAF_556_100Rnd_T",10],
["UK3CB_BAF_556_200Rnd_T",10],
["UK3CB_BAF_762_20Rnd_T",20],
["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell",6],
["B_IR_Grenade",10],
["Laserbatteries",10],
["UK3CB_BAF_1Rnd_60mm_Mo_Shells",10],
["UK3CB_BAF_1Rnd_81mm_Mo_LG",10],
["UK3CB_BAF_1Rnd_81mm_Mo_Guided",10]

];

{_u addMagazineCargoGlobal _x;} foreach _AmmoMagazines;

//-------- Weapons

_AmmoWeapons = [

["UK3CB_BAF_M6",2],
["UK3CB_BAF_L16",1],
["UK3CB_BAF_L16_Tripod",1],
["UK3CB_BAF_Javelin_Slung_Tube",2],
["UK3CB_BAF_NLAW_Launcher",2],
["UK3CB_BAF_AT4_CS_AT_Launcher",2],
["UK3CB_BAF_Javelin_CLU",2],
["UK3CB_BAF_Soflam_Laserdesignator",1]
];

{_u addWeaponCargoGlobal _x;} foreach _AmmoWeapons;