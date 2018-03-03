
{_x setSpeaker "NoVoice"} forEach playableUnits;

//=================================== VANILLA ONLY =====================================================

	if (TimedArsenal) 		then {call LR_Fnc_TimedArsenal;};
	If (!Confirmation)		then {call LR_fnc_Confirmation;};
	
switch (MissionType) do {

    case "ACE": {};
	
    case "VANILLA": {
		
		if (VanillaGroupManagement) then {["Initialize"] call BIS_fnc_dynamicGroups;};

};
