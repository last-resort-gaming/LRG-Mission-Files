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
	
if (servername == "[LRG] Last Resort Gaming || EU 3 || Operations") then {

	_log = format ["********************* %1 Mission Started. *********************",briefingName];	
	[_log,"LRG_CONNECTLOG"] remoteExecCall ["A3Log", 2];

};