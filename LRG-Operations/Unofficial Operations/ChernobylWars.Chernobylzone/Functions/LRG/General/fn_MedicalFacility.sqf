/*
	LRG MISSION TEMPLATE
	fn_MedicalFacility.sqf
	Author: MitchJC
	Description: Creates an area around LRGMedicalFacilities where players are healed or revived after a time delay.
*/
	if (!EnableLRGMedFacility) exitwith {diag_log "LRG_Logging: LRG Med Facility set to disabled."};
	if !(isClass (configFile >> "CfgPatches" >> "ace_main")) exitwith {diag_log "LRG_Logging: ACE not enabled. Med Facility Disabled."};
	
LR_FNC_Medical = {

if (player getVariable "ACE_isUnconscious") then {
	[format ["<t color='#ed1b2e' size = '.4'>%1<br />is being revived at the LRG Medical Facility.</t>", profileName],1,-0.2,10,0,0,789] remoteExec ["BIS_fnc_dynamicText",0,false];
	[ACE_medical_fnc_treatmentAdvanced_fullHealLocal, [objNull,player], 10] call CBAP_fnc_waitAndExecute;
	} else {
	[ACE_medical_fnc_treatmentAdvanced_fullHealLocal, [objNull,player], 5] call CBAP_fnc_waitAndExecute;
	};

};

{
_MedicalFacility = missionNamespace getVariable[_x, objNull];
_trg = createTrigger ["EmptyDetector", getPos _MedicalFacility];
_trg setTriggerArea [4.6, 5, getdir _MedicalFacility,true, 4.3];
_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
_trg setTriggerStatements ["player in thislist", "[player,player]call LR_fnc_Medical",""];
} foreach LRGMedicalFacilities;

