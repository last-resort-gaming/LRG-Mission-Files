/*
	LRG MISSION TEMPLATE
	fn_PilotCheck.sqf
	Author: MitchJC
	Description: Allows only Pilots to fly aircraft.
*/


if (!hasInterface) exitwith {};

player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
        _PlayerVehRole   = assignedVehicleRole player;
		if(_PlayerVehRole isEqualTo []) exitWith {};
		_playerPos = _PlayerVehRole select 0;
		
		if ((_vehicle isKindOf "Air") && !(_vehicle isKindOf "ParachuteBase")) then {
			if (iscopilotenabled _vehicle) then {_vehicle enableCopilot false;};
			if ((_playerPos isEqualTo "driver") && !(player getUnitTrait "Pilot")) exitwith {
			    moveOut _unit;
				["<t color='#FFBB00' size = '.5'>You're not a Pilot.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;
			};
		};		
}];

player addEventHandler ["SeatSwitchedMan", {
	params ["_unit1", "_unit2", "_vehicle"];
	
        _PlayerVehRole   = assignedVehicleRole player;
		 if(_PlayerVehRole isEqualTo []) exitWith {};
		_playerPos = _PlayerVehRole select 0;
		
		if ((_vehicle isKindOf "Air") && !(_vehicle isKindOf "ParachuteBase")) then {
			if ((_playerPos isEqualTo "driver") && !(player getUnitTrait "Pilot")) exitwith {
			    moveOut _unit1;
			};
		};	
}];