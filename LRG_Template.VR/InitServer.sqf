
{_x setSpeaker "NoVoice"} forEach playableUnits;

//=================================== VANILLA ONLY =====================================================

	if (TimedArsenal) 		then {call LR_Fnc_TimedArsenal;};
	if (TFAR_ON_Message)	then {call LR_fnc_TFAR_ON_Message;};
	
switch (MissionType) do {

    case "ACE": {};
	
    case "VANILLA": {
		
		if (VanillaGroupManagement) then {["Initialize"] call BIS_fnc_dynamicGroups;};

	};
};