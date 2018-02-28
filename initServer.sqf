
{_x setSpeaker "NoVoice"} forEach playableUnits;

//=================================== VANILLA ONLY =====================================================


switch (MissionType) do {

    case "ACE": {};
	
    case "VANILLA": {
		
		if (VanillaGroupManagement) then {["Initialize"] call BIS_fnc_dynamicGroups;};

};