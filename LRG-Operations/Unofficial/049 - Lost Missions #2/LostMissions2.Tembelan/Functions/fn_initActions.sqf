if !(player getUnitTrait "Mission Maker") exitWith {};

_action = [
	"MissionActions",
	"Mission Actions",
	"",
	{diag_log "running misac parent"},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _action] call ACE_interact_menu_fnc_addActionToObject;

_action = [
	"CountdownOne",
	"First Countdown (45min)",
	"",
	{[2700, "First Contact in"] remoteExec ["LR_LM_fnc_countdown", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "MissionActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"CountdownTwo",
	"Second Countdown (120min)",
	"",
	{[7200, "Evac Complete in"] remoteExec ["LR_LM_fnc_countdown", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "MissionActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// ---------------------------------------------- Test Stuff Below
/*
_action = [
	"CountdownTest",
	"Test Countdown",
	"",
	{[60, "Test test test"] remoteExec ["LR_LM_fnc_countdown", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "MissionActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;
*/