/*
	LRG MISSION TEMPLATE
	fn_AmmoBox.sqf
	Author: MitchJC

*/



if (EnableAmmoBox) then {

        {
                _box = missionNamespace getVariable[_x, objNull];

                if (isServer) then {
                        ["AmmoboxInit", [_box, true]] call BIS_fnc_arsenal;
                };

                [_box, [true], false] call BIS_fnc_removeVirtualItemCargo;
                [_box, [true], false] call BIS_fnc_removeVirtualWeaponCargo;
                [_box, [true], false] call BIS_fnc_removeVirtualBackpackCargo;
                [_box, [true], false] call BIS_fnc_removeVirtualMagazineCargo;
        }
        foreach AmmoBoxName;


        _AvailableAmmoItems = [
                "ACE_elasticBandage",
                "ACE_packingBandage",
                "ACE_quikclot",
                "ACE_bloodIV_500",
                "ACE_epinephrine",
                "ACE_morphine",
                "ACE_tourniquet",
                "ACE_CableTie",
                "ACE_IR_Strobe_Item",
                "optic_NVS"
        ];

        _AvailableAmmoHeadgear = [];

        _AvailableAmmoGoggles = [];

        _AvailableAmmoUniforms = [];

        _AvailableAmmoVests = [];

        _AvailableAmmoBackpacks = [];

        _AvailableAmmoAttachments = [];

        _AvailableAmmoMagazines = [
                "UK3CB_BAF_SmokeShell",
                "HandGrenade",
                "DemoCharge_Remote_Mag",
                "UK3CB_BAF_556_30Rnd_T",
                "UK3CB_BAF_556_200Rnd_T",
                "UK3CB_BAF_762_L42A1_20Rnd_T",
                "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell",
                "UK3CB_BAF_1Rnd_60mm_Mo_Shells"
        ];

        _AvailableAmmoWeapons = [
                "UK3CB_BAF_M6",
                "UK3CB_BAF_Javelin_Slung_Tube",
                "UK3CB_BAF_NLAW_Launcher",
                "UK3CB_BAF_AT4_CS_AT_Launcher",
                "UK3CB_BAF_Javelin_CLU"
        ];


        {
                _box = missionNamespace getVariable[_x, objNull];

                [_box, _AvailableAmmoHeadGear, false] call BIS_fnc_addVirtualItemCargo;


                [_box, _AvailableAmmoGoggles, false] call BIS_fnc_addVirtualItemCargo;


                [_box, _AvailableAmmoUniforms, false] call BIS_fnc_addVirtualItemCargo;


                [_box, _AvailableAmmoVests, false] call BIS_fnc_addVirtualItemCargo;


                [_box, _AvailableAmmoItems, false] call BIS_fnc_addVirtualItemCargo;


                [_box, _AvailableAmmoAttachments, false] call BIS_fnc_addVirtualItemCargo;


                [_box, _AvailableAmmoWeapons, false] call BIS_fnc_addVirtualWeaponCargo;


                [_box, _AvailableAmmoBackpacks, false] call BIS_fnc_addVirtualBackpackCargo;


                [_box, _AvailableAmmoMagazines, false] call BIS_fnc_addVirtualMagazineCargo;

        }
        foreach AmmoBoxName;
};