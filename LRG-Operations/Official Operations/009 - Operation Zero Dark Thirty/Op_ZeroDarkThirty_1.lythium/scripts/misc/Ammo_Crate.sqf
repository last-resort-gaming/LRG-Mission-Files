

_u = _this select 0;

clearWeaponCargoGlobal _u;
clearMagazineCargoGlobal _u;
clearItemCargoGlobal _u;
clearBackpackCargoGlobal _u;


//---------------------------------------------------- CRATE CONTENTS

//-------- Items

_AmmoItems = [

["ACE_elasticBandage", 20],
["ACE_packingBandage", 20],
["ACE_quikclot", 30],
["ACE_bloodIV_500", 15],
["ACE_epinephrine", 10],
["ACE_morphine", 30],
["ACE_tourniquet", 20],
["ACE_CableTie", 8],
["ACE_IR_Strobe_Item", 8],
["optic_NVS",8]
];

{_u additemCargoGlobal _x;} foreach _AmmoItems;

//-------- Magazines

_AmmoMagazines = [

["UK3CB_BAF_SmokeShell",20],
["HandGrenade",10],
["DemoCharge_Remote_Mag",4],
["UK3CB_BAF_556_30Rnd_T",40],
["UK3CB_BAF_556_200Rnd_T",10],
["UK3CB_BAF_762_L42A1_20Rnd_T",20],
["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell",8],
["UK3CB_BAF_1Rnd_60mm_Mo_Shells",10]


];

{_u addMagazineCargoGlobal _x;} foreach _AmmoMagazines;

//-------- Weapons

_AmmoWeapons = [

["UK3CB_BAF_M6",1],
["UK3CB_BAF_Javelin_Slung_Tube",2],
["UK3CB_BAF_NLAW_Launcher",2],
["UK3CB_BAF_AT4_CS_AT_Launcher",2],
["UK3CB_BAF_Javelin_CLU",2]

];

{_u addWeaponCargoGlobal _x;} foreach _AmmoWeapons;