if !(isServer) exitWith {};

params [
	["_stage", 1],
	"_TargetVehicle",
	"_TargetLocation",
	"_MedLocation"
];

    	fnc_blurEffects = {
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [8];
			"dynamicBlur" ppEffectCommit 0;
			"dynamicBlur" ppEffectAdjust [0.0];
			"dynamicBlur" ppEffectCommit 20;
    	};
		systemchat format ["_stage = %1",_stage];
call {
	// Stage 1 - Setup and Wait for Boom.
	if (_stage isEqualTo 1) exitwith {


		if (!alive _TargetVehicle) exitWith {systemchat "Target Vehicle is no more."};

		  [{
				params ["_args", "_pfhID"];
				_args params ["_TargetVehicle", "_TargetLocation", "_MedLocation"];

				private _VehiclePos = getpos _TargetVehicle;
				private _distancetotarget = _VehiclePos distance2D _TargetLocation;
				systemchat format ["Distance to Target = %1", _distancetotarget];
		  		if (_distancetotarget < 20) then {
			  		[0, _VehiclePos, [40,2,10], "Bo_mk82"] call LR_fnc_SpawnExplosives;
					[_pfhID] call CBA_fnc_removePerFrameHandler;
					[2, _TargetVehicle, _TargetLocation,_MedLocation] call LRG_fnc_BigBang;
				};
			}, 1, [_TargetVehicle, _TargetLocation,_MedLocation]] call CBA_fnc_addPerFrameHandler;

	};
	// Stage 2 - Knockout all players
	if (_stage isEqualTo 2) exitwith {

		// Get all Players near the Explosion
		private _players = [];
    	{
      		if ((_x distance2D  _TargetLocation) < 150) then {
	        	_players pushBackUnique _x;
      		};
	    } forEach allPlayers;

		// Put them down.
		{
			[_x] remoteExecCall ["ace_medical_fnc_setCardiacArrest", 2];
			[1, ["","BLACK OUT", 5]] remoteExec ["cutText",_x,true];
			[5, 0] remoteExec ["fadeSound", _x];
    	} forEach _players;

		// Get them up.
		[{
		params ["_MedLocation","_players"];

		{

			_RandomBodyPart = ["head", "body", "hand_l", "hand_r", "leg_l", "leg_r"];
			_RandomInjuryType = ["grenade", "explosive", "shell"];
			
			

      		_randomPos = _MedLocation vectorAdd [random 50, random 50, 0];
        	_x setPos _randomPos;
			[objnull, _x] remoteExecCall ["ACE_medical_fnc_treatmentAdvanced_fullHealLocal", _x];
			for "_i" from 0 to (1+ random 4) do {
				[_x, 0.2, selectRandom _RandomBodyPart, selectRandom _RandomInjuryType] remoteExecCall ["ace_medical_fnc_addDamageToUnit",0];
			};
			remoteExecCall ["fnc_blurEffects", _x];
			[10, 1] remoteExec ["fadeSound", _x];			
			[1, ["","BLACK IN", 10]] remoteExec ["cutText",_x,true];

		} forEach _players;	  
		}, [_MedLocation, _players], 10] call CBA_fnc_waitAndExecute;
	};
};