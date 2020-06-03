if ((!isServer) || {LR_MissionStarted}) exitwith {};

params [["_stage", "init"], ["_args",[]]];

_args params [["_players", []], ["_mission", objNull]];

switch (_stage) do {
	case "init": {

    	_players = [];
		_mission = objNull;

    	{
      		if !(_x getUnitTrait "Mission Maker") then {
	        	_players pushBackUnique _x;
      		} else {
				  _x setPos (getMarkerPos "start_pos_mc");
				  _mission = _x;
			  };
	    } forEach allPlayers;

     	fnc_Black_In = {
 			1 cutText ["","BLACK IN", 10];
 		};

     	fnc_Black_Out = {
 			1 cutText ["","BLACK OUT", 5];
 		};

		publicVariable "fnc_Black_Out";
   		publicVariable "fnc_Black_In";

		[
			{
				["fadeOut", _this] call LR_Sec_fnc_startMission;
			}, [_players, _mission], 2
		] call CBA_fnc_waitAndExecute;
	};

	case "fadeOut": {

		{
			remoteExecCall ["fnc_Black_Out", _x];
			[true] remoteExec ["disableUserInput", _x];
    	} forEach _players;

		[
			{
				["fadeSound", _this] call LR_Sec_fnc_startMission;
			}, _args, 9
		] call CBA_fnc_waitAndExecute;
	};

	case "fadeSound": {

    	{
    		[2, 0] remoteExec ["fadeSound", _x];
    	} forEach _players;

    	[
    	  	{
    	    	["teleport", _this] call LR_Sec_fnc_startMission;
    	  	}, _args, 2
    	] call CBA_fnc_waitAndExecute;
	};

  	case "teleport": {
    	{

        	[false] remoteExec ["allowDamage", _x];
        	_markerIndx = format ["start_pos_%1", _forEachIndex];

			_x setPos (getMarkerPos _markerIndx);
      	} forEach _players;

		setDate [2016, 6, 17, 17, 15];

      	[
      		{
      	    	["woundAndEnable", _this] call LR_Sec_fnc_startMission;
      	  	}, _args, 1
      	] call CBA_fnc_waitAndExecute;
  	};

  	case "woundAndEnable": {

    	{
			[true] remoteExec ["allowDamage", _x];
			[false] remoteExec ["disableUserInput", _x];
			[objnull, _x] remoteExecCall ["ACE_medical_fnc_treatmentAdvanced_fullHealLocal", _x];
    	} forEach _players;

    	[
    	  	{
    	    	["effects", _this] call LR_Sec_fnc_startMission;
    	  	}, _args, 3
    	] call CBA_fnc_waitAndExecute;
  	};

  	case "effects": {
		skipTime 2;

    	{
			remoteExecCall ["fnc_Black_In", _x];
	    	[10, 1] remoteExec ["fadeSound", _x];
    	} forEach _players;

    	[
      		{
        		["finish", _this] call LR_Sec_fnc_startMission;
	      	}, _args, 1
    	] call CBA_fnc_waitAndExecute;
	};

  	case "finish": {

		// Create tasks
		// Search-Task
		[
			west,
			"secTask00",
			[
				"Conduct a routine inspection at the plantation.",
				"Inspect Plantation",
				"obj_marker_2"
			],
			getMarkerPos "obj_marker_2",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;

		LR_Tasks_00_active = true;
		LR_MissionStarted = true;

		// setRespawn
		[1] call LR_Sec_fnc_setRespawn;

		// todo: something with https://community.bistudio.com/wiki/BIS_fnc_infoText here, I think, or
		// https://community.bistudio.com/wiki/BIS_fnc_EXP_camp_SITREP
		// https://community.bistudio.com/wiki/BIS_fnc_typeText

		"Start Complete" remoteExec ["hint", _mission];
  	};

	default {
		["init", _args] call LR_Sec_fnc_startMission;
	};
};