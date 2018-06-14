/*
	LRG MISSION TEMPLATE
	InitServer.sqf
	Author: MitchJC
	Description: Scripts executed on server only.
*/

{_x setSpeaker "NoVoice"} forEach playableUnits;

//=================================== VANILLA ONLY =====================================================
		
		
	if !(isClass (configFile >> "CfgPatches" >> "ace_main")) then {
	["Initialize"] call BIS_fnc_dynamicGroups;
	};
	
If (TimedArsenal) then {
	call LR_Fnc_TimedArsenal};
	