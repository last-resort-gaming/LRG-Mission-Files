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
	[_log,"LRG_CONNECTLOG"] call A3Log;

	["ace_unconscious", {
   	if (_this select 1) then {
      // Get player object
      _player = _this select 0;
      
      // Increment death count
      _deathCount = _player getVariable ["deathCount", 0];
      _deathCount = _deathCount + 1;
      _player setVariable ["deathCount", _deathCount];
      
      // Logging
  		_log = format ["-------- %1 -------- Unconscious Count: %2", name _player, _deathCount];	
			[_log,"LRG_DEATHLOG"] call A3Log;
  	};
	}] call CBA_fnc_addEventHandler;
	
	};