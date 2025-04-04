/*
	File: fn_spawn_on_server.sqf
	Author: Spoffy
	Date: 2020-10-09
	Last Update: 2020-10-09
	Public: Yes
	
	Description:
		Executes an REHandler function on the server in a scheduled environment.
	
	Parameter(s):
		_method - Method to remote execute. Must be defined in REHandler config [STRING]
		_params - Parameters to pass to that method [ANY]
	
	Returns:
		None
	
	Example(s):
		["recruiter_join_faction", cursorObject] call para_c_fnc_execute_on_server;
*/

params ["_method", "_params"];

[player, _method, _params] remoteExec ["para_s_fnc_rehandler", 2];