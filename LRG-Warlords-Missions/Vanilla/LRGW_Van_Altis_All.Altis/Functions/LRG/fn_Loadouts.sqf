/*
Function: LR_fnc_Loadouts

Description:
    Applies a specified loadout to the given unit. Loadouts are currently hardcoded, but will be
	replaced with config data later down the line.

Arguments:
    _unit - Unit to apply given loadout to <UNIT>
	_Loadout - Type of loadout to apply, currently unused <STRING>

Return Value:
    None

Example:
	Nothing to see here

Author: MitchJC
*/

params [
	"_unit",
	"_Loadout"
];

private ["_Equipment"];

_Equipment = call {
	//================ 3CB Loadouts

		// Operational Loadouts
	if (typeof _unit IsEqualTo "B_T_Soldier_SL_F") exitwith {[["arifle_MX_khk_F","","acc_pointer_IR","optic_ERCO_khk_F",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",16],[],""],["U_B_T_Soldier_F",[["FirstAidKit",4]]],["V_PlateCarrier2_tna_F",[["HandGrenade",2,1],["30Rnd_65x39_caseless_mag",6,30],["SmokeShell",2,1]]],[],"H_HelmetB_tna_F","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles_tna_F"]];};
	if (typeof _unit IsEqualTo "O_T_Soldier_SL_F") exitwith {[["arifle_CTAR_ghex_F","","acc_pointer_IR","optic_Arco_ghex_F",["30Rnd_580x42_Mag_F",30],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",16],[],""],["U_O_T_Soldier_F",[["FirstAidKit",4]]],["V_HarnessO_ghex_F",[["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_580x42_Mag_F",6,30]]],[],"H_HelmetLeaderO_ghex_F","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","O_NVGoggles_ghex_F"]];};
	
	
	if (typeof _unit IsEqualTo "B_Soldier_SL_F") exitwith {[["arifle_MX_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",16],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",4]]],["V_PlateCarrierH_CTRG",[["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_65x39_caseless_mag",6,30]]],[],"H_HelmetSpecB_paint2","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]]};
	if (typeof _unit IsEqualTo "O_Soldier_SL_F") exitwith {[["arifle_Katiba_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_65x39_caseless_green",30],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",16],[],""],["U_O_CombatUniform_ocamo",[["FirstAidKit",4]]],["V_TacVest_khk",[["30Rnd_65x39_caseless_green",6,30],["HandGrenade",2,1],["SmokeShell",2,1]]],[],"H_HelmetLeaderO_ocamo","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles_OPFOR"]]};

};

if !(isnil "_Equipment") then {_unit setUnitLoadout _Equipment;} else {systemchat format ["No Default Loadout for %1. Deselect LRG Preset Loadout or change unit type.", typeof _unit]};