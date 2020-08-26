params ["_stage"];

if (not hasInterface) exitWith {};

switch (_stage) do {
	case 0: {
		[
			player, "task_parachuting_0",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_1"],
			getPos para_1, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 1: {
		["task_parachuting_0", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_1",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_2"],
			getPos para_2, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 2: {
		["task_parachuting_1", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_2",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_2"],
			getPos para_3, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 3: {
		["task_parachuting_2", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_3",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_3"],
			getPos para_4, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 4: {
		["task_parachuting_3", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_4",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_4"],
			getPos para_5, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 5: {
		["task_parachuting_4", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_5",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_5"],
			getPos para_6, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 6: {
		["task_parachuting_5", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_6",
			["Pass checkpoint", "Pass the next checkpoint", "para_m_6"],
			getPos para_7, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 7: {
		["task_parachuting_6", "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, "task_parachuting_7",
			["Land", "Land in the designated area", "para_m_end"],
			getPos para_end, "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
	case 8: {
		["task_parachuting_7", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	};
	default {
		[format ["task_parachuting_%1", _stage - 1], "SUCCEEDED", false] call BIS_fnc_taskSetState;

		[
			player, format ["task_parachuting_%1", _stage],
			["Pass checkpoint", "Pass the next checkpoint", ""],
			missionNamespace getVariable format["para_%1", _stage + 1], "ASSIGNED", 1, true, "", true
		] call BIS_fnc_taskCreate;
	};
};