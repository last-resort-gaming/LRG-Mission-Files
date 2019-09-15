// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_pilots = ["UK3CB_BAF_PILOT_RAF","B_Helipilot_F","B_Pilot_F","B_Fighter_Pilot_F"];
_aircraft_nocopilot = [
"UK3CB_BAF_Merlin_HC3_18_MTP",
"UK3CB_BAF_Merlin_HC3_18_GPMG_MTP",
"UK3CB_BAF_Merlin_HC3_24_MTP",
"UK3CB_BAF_Merlin_HC3_32_MTP",
"UK3CB_BAF_Merlin_HC3_Cargo_MTP",
"UK3CB_BAF_Merlin_HC4_18_MTP",
"UK3CB_BAF_Merlin_HC4_18_GPMG_MTP",
"UK3CB_BAF_Merlin_HC4_24_MTP",
"UK3CB_BAF_Merlin_HC4_32_MTP",
"UK3CB_BAF_Merlin_HC4_Cargo_MTP",
"UK3CB_BAF_Merlin_HC4_CSAR_MTP",
"UK3CB_BAF_Merlin_HM2_18_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_6A_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_6B_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_6C_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_6D_MTP",
"UK3CB_BAF_Wildcat_AH1_HEL_6A_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_8A_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_8B_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_8C_MTP",
"UK3CB_BAF_Wildcat_AH1_CAS_8D_MTP",
"UK3CB_BAF_Wildcat_AH1_HEL_8A_MTP",
"UK3CB_BAF_Wildcat_AH1_TRN_8A_MTP",
"UK3CB_BAF_Merlin_HC3_CSAR_MTP",
"UK3CB_BAF_Wildcat_HMA2_TRN_8A_MTP",
"CUP_B_AH1_DL_BAF",
"CUP_B_Merlin_HC3_GB",
"CUP_B_Merlin_HC3_Armed_GB",
"CUP_B_Merlin_HC3_VIV_GB",
"CUP_B_Merlin_HC3A_Armed_GB",
"CUP_B_Merlin_HC4_GB",
"CUP_B_C130J_Cargo_GB",
"CUP_B_AW159_RN_Blackcat",
"CUP_B_AW159_Unarmed_RN_Blackcat",
"CUP_B_AW159_GB",
"CUP_B_AW159_Unarmed_GB",
"CUP_B_AW159_RN_Grey",
"CUP_B_AW159_Unarmed_RN_Grey",
"CUP_B_CH47F_GB",
"CUP_B_CH47F_VIV_GB",
"CUP_B_SA330_Puma_HC1_BAF",
"CUP_B_SA330_Puma_HC2_BAF",
"CUP_B_C130J_GB",
"CUP_B_Merlin_HC3A_GB"
];

waitUntil {player == player};

_iampilot = (player getUnitTrait "Pilot");

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only
		
		if((_veh isKindOf "Helicopter" || _veh isKindOf "Plane") && !(_veh isKindOf "ParachuteBase")) then {
			if(({typeOf _veh == _x} count _aircraft_nocopilot) > 0) then {
				_forbidden = [_veh turretUnit [0]];
				if(player in _forbidden) then {
					if (!_iampilot) then {
						systemChat "You're not a Pilot!";
						player action ["getOut",_veh];
					};
				};
			};
			if(!_iampilot) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					systemChat "You're not a Pilot!";
					player action ["getOut", _veh];
				};
			};
		};
	
	};
};

