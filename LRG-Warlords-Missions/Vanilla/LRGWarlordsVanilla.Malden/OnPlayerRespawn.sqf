/*
	LRG MISSION TEMPLATE
	OnPlayerRespawn.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;


[] execVM "scripts\YAINA\earplugs.sqf";
player addAction ["Repack Magazines", "player spawn QS_fnc_clientRepackMagazines","",-98,false,true];

private _Equipment = [];
if ((side player) isequalto WEST) then {
	_Equipment = [["arifle_MX_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",16],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",4],["Chemlight_green",1,1]]],["V_PlateCarrierH_CTRG",[["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_65x39_caseless_mag",5,30]]],[],"H_HelmetSpecB_paint2","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]];
	};
	
if ((side player) isequalto EAST) then {
	_Equipment = [["arifle_Katiba_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_65x39_caseless_green",30],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",16],[],""],["U_O_CombatUniform_ocamo",[["FirstAidKit",4]]],["V_TacVest_khk",[["30Rnd_65x39_caseless_green",5,30],["16Rnd_9x21_Mag",2,16],["HandGrenade",2,1],["SmokeShell",2,1]]],[],"H_HelmetLeaderO_ocamo","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
	};

if !(isnil "_Equipment") then {player setUnitLoadout _Equipment;};