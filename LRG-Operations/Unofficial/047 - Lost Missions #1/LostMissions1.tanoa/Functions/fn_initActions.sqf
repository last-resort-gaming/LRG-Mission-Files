if !(player getUnitTrait "Mission Maker") exitWith {};

_action = [
	"CreatureActions",
	"Creature Actions",
	"",
	{diag_log "running creature parent"},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _action] call ACE_interact_menu_fnc_addActionToObject;

_action = [
	"MiscActions",
	"Misc. Actions",
	"",
	{diag_log "running misc parent"},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"DisCar",
	"<t color='#00ff00'>Disable Car</t>",
	"",
	{remoteExec ["LR_Sec_fnc_disableCar", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"MissionStart",
	"Start Mission",
	"",
	{
		hint "Mission started!";
		remoteExec ["LR_Sec_fnc_startMission", 2];
		LR_MissionStarted = true;
		LR_Tasks_00_active = true;
	},
	{not LR_MissionStarted}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"MissionEndSuccess",
	"<t color='#00ff00'>End Mission (Success)</t>",
	"",
	{[0] remoteExec ["LR_Sec_fnc_endMission", 2]},
	{LR_MissionStarted}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"MissionEndFailure",
	"<t color='#ff0000'>End Mission (Failure)</t>",
	"",
	{[1] remoteExec ["LR_Sec_fnc_endMission", 2]},
	{LR_MissionStarted}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"GodModeOn",
	"<t color='#55ff55'>Enable God-Mode</t>",
	"",
	{
		player setVariable ["ACE_allowDamage",false,true];
		player allowDamage false;
		player setVariable ["LR_GodMode_On", true, true];
	},
	{not (_player getVariable ["LR_GodMode_On", false])}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"GodModeOff",
	"<t color='#ff5555'>Disable God-Mode</t>",
	"",
	{
		player setVariable ["ACE_allowDamage",true,true];
		player allowDamage true;
		player setVariable ["LR_GodMode_On", false, true];
	},
	{_player getVariable ["LR_GodMode_On", false]}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"JumpShort",
	"<t color='#f05050'>Jump (Short)</t>",
	"",
	{
		player setVelocityModelSpace [0,10,10];
	},
	{_player getVariable ["LR_GodMode_On", false]}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"JumpMed",
	"<t color='#f05050'>Jump (Medium)</t>",
	"",
	{
		player setVelocityModelSpace [0,20,15];
	},
	{_player getVariable ["LR_GodMode_On", false]}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"JumpLong",
	"<t color='#f05050'>Jump (Long)</t>",
	"",
	{
		player setVelocityModelSpace [0,50,25];
	},
	{_player getVariable ["LR_GodMode_On", false]}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "MiscActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// SPAWNS

_action = [
	"SpawnActions",
	"Spawn Actions",
	"",
	{diag_log "running spawn parent"},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"SpawnSL",
	"Spawn Decoy (SL)",
	"",
	{[0] remoteExec ["LR_Sec_fnc_spawnDecoy", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SpawnActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SpawnActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"SpawnEng",
	"Spawn Decoy (Engineer)",
	"",
	{[1] remoteExec ["LR_Sec_fnc_spawnDecoy", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SpawnActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SpawnActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"SpawnMedic",
	"Spawn Decoy (Medic)",
	"",
	{[2] remoteExec ["LR_Sec_fnc_spawnDecoy", 2]},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SpawnActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SpawnActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// LAMPS/FLASHLIGHTS

_action = [
	"LightActions",
	"Light Actions",
	"",
	{diag_log "running lights parent"},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"FlashlightsOff",
	"Flashlights Off",
	"",
	{
		{
			if !(_x getUnitTrait "Mission Maker") then {
				[_x, ["GunLightOff", _x]] remoteExec ["action", _x];
			};
		} forEach allPlayers;
	},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"FlashlightsFlicker",
	"Flicker Flashlights (Global)",
	"",
	{
		{
			if !(_x getUnitTrait "Mission Maker") then {
				[0] remoteExec ["LR_Sec_fnc_flickerFlashlight", _x];
			};
		} forEach allPlayers;
	},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"FlashlightsFlickerRnd",
	"Flicker Flashlights (Random)",
	"",
	{
		_victim = selectRandom allPlayers;

		while {_victim getUnitTrait "Mission Maker"} do {
			_victim = selectrandom allPlayers;
		};

		[0] remoteExec ["LR_Sec_fnc_flickerFlashlight", _victim];
	},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"FlashlightsKill",
	"Kill Flashlights (Global)",
	"",
	{
		{
			if !(_x getUnitTrait "Mission Maker") then {
				[15] remoteExec ["LR_Sec_fnc_killFlashlight", _x];
			};
		} forEach allPlayers;
	},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"FlashlightsKillPerm",
	"Disable Flashlights (Permanent)",
	"",
	{
		LR_flashlightsDead = true;
		{
			if !(_x getUnitTrait "Mission Maker") then {
				[100] remoteExec ["LR_Sec_fnc_killFlashlight", _x];
			};
		} forEach allPlayers;
	},
	{not (LR_flashlightsDead)}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"FlashlightsEnable",
	"Enable Flashlights",
	"",
	{
		LR_flashlightsDead = false;
	},
	{LR_flashlightsDead}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "LightActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// VISUALS

_action = [
	"VisualActions",
	"Visual Actions",
	"",
	{diag_log "running visual parent"},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"changeVision",
	"<t color='#0000ff'>Switch Vision Mode</t>",
	"",
	{
		call LR_Sec_fnc_fullScreenNV
	},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"hidePlayer",
	"<t color='#00ff00'>Go Invisible</t>",
	"",
	{
		params ["_target"];
		[_target, true] remoteExec ["LR_Sec_fnc_hidePlayer", 2];
	},
	{not isObjectHidden _player}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"unhidePlayer",
	"<t color='#ff0000'>Go Visible</t>",
	"",
	{
		params ["_target"];
		[_target, false] remoteExec ["LR_Sec_fnc_hidePlayer", 2];
	},
	{isObjectHidden _player}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"GlitchAll",
	"Glitch (Global)",
	"",
	{
		remoteExec ["LR_Sec_fnc_glitchOut", 0];
	},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"GlitchRnd",
	"Glitch (Random)",
	"",
	{
		_player = selectRandom allPlayers;

		while {_player getUnitTrait "Mission Maker"} do {
			_player = selectrandom allPlayers;
		};

		remoteExec ["LR_Sec_fnc_glitchOut", _player];
	},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "VisualActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// SOUNDS

_action = [
	"SoundActions",
	" Sound Actions",
	"",
	{diag_log "running sound parent"},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"LocalSounds",
	"Local Sounds",
	"",
	{diag_log "running local sound parent"},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"LocalSounds2",
	"Local Sounds #2",
	"",
	{diag_log "running local sound parent"},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"speechSounds",
	"Speech",
	"",
	{diag_log "running speech parent"},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

{
	private ["_subpath"];

	if ((round (_forEachIndex % 2)) == 0) then {
		_subpath = "LocalSounds";
	} else {
		_subpath = "LocalSounds2";
	};

	_cfgName = getText (configFile >> "CfgSounds" >> _x >> "name");
	_action = [
		format ["playSound3D%1", _forEachIndex],
		format ["<t color='#ff00ff'>Play %1</t>", _cfgName],
		"",
		{
			params ["_target", "_caller", "_args"];
			_args params ["_sound"];

			[_target, _sound, 250, 1, 3] remoteExec ["LR_fnc_Sound3dOnObject", 2];
		},
		{true},
		{},
		[_x]
	] call ACE_interact_menu_fnc_createAction;

	[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions", _subpath], _action] call ACE_interact_menu_fnc_addActionToObject;
	[["ACE_ZeusActions", "SoundActions", _subpath], _action] call ACE_interact_menu_fnc_addActionToZeus;
} forEach [
	"alien_horn_1",
	"reverse_voice_female",
	"reverse_voice_male",
	"slow_male_breathing",
	"woman_breathing",
	"glitched_vinyl",
	"tornado_siren",
	"tornado_siren_2",
	"fast_heartbeat",
	"slow_heartbeat",
	"teeth_chatter"
];

{
	_cfgName = getText (configFile >> "CfgSounds" >> _x >> "name");
	_action = [
		format ["playSound3D%1", _forEachIndex],
		format ["<t color='#ff00ff'>Play %1</t>", _cfgName],
		"",
		{
			params ["_target", "_caller", "_args"];
			_args params ["_sound"];

			[_target, _sound, 250, 1, 3] remoteExec ["LR_fnc_Sound3dOnObject", 2];
		},
		{true},
		{},
		[_x]
	] call ACE_interact_menu_fnc_createAction;

	[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions", "speechSounds"], _action] call ACE_interact_menu_fnc_addActionToObject;
	[["ACE_ZeusActions", "SoundActions", "speechSounds"], _action] call ACE_interact_menu_fnc_addActionToZeus;
} forEach [
	"tippers",
	"nicky",
	"shiny",
	"kingy",
	"john"
];

_action = [
	"playGlitch",
	"<t color='#ff00ff'>Play Random Glitch</t>",
	"",
	{
		_sound = selectRandom [
			"short_glitch_1",
			"short_glitch_2",
			"short_glitch_3",
			"short_glitch_4",
			"short_glitch_5",
			"short_glitch_6",
			"short_glitch_7",
			"short_glitch_8",
			"crazy_brain"
		];

		_sound remoteExec ["playMusic", 0];
	},
	{true},
	{},
	[]
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"playDrone",
	"<t color='#ff00ff'>Play Random Drone</t>",
	"",
	{
		_sound = selectRandom [
			"drone_1",
			"drone_2",
			"drone_3",
			"drone_4",
			"drone_5",
			"drone_6",
			"drone_7",
			"drone_8",
			"drone_9",
			"drone_10",
			"disturbing_drone",
			"fearful_drone",
			"broken_drone",
			"death_drone",
			"low_drone_ambient",
			"low_drone_ambient_2"
		];

		_sound remoteExec ["playMusic", 0];
	},
	{true},
	{},
	[]
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"playAmbient",
	"<t color='#ff00ff'>Play Random Ambient</t>",
	"",
	{
		_sound = selectRandom [
			"alien_ambient",
			"hate_ambient",
			"night_sky_ambient",
			"particles_ambient",
			"scare_ambient",
			"tension_ambient",
			"tensity_ambient",
			"warnings_ambient",
			"bends_ambient",
			"chiller_ambient",
			"dismay_ambient",
			"filth_ambient",
			"growl_ambient"
		];

		_sound remoteExec ["playMusic", 0];
	},
	{true},
	{},
	[]
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"playSpeech",
	"<t color='#ff00ff'>Play Speech</t>",
	"",
	{
		"speech_2" remoteExec ["playMusic", 0];
	},
	{true},
	{},
	[]
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"stopAllSounds",
	"<t color='#ffffff'>Stop All Sounds</t>",
	"",
	{
		params ["_target"];
		_soundObjects = _target getVariable ["SoundObjects", []];
		{
			deleteVehicle _x;
		} forEach _soundObjects;
		"" remoteExec ["playMusic", 0];
	},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "SoundActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// ==================
//      TASKS
// ==================


_action = [
	"TaskActions",
	"Task Actions",
	"",
	{diag_log "running task parent"},
	{true}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 0

_action = [
	"completeTask00",
	"<t color='#ff9900'>Cancel Task 0</t>",
	"",
	{

		["secTask00", "CANCELED"] call BIS_fnc_taskSetState;
		LR_Tasks_00_active = false;
		LR_Tasks_01_ready = true;
	},
	{LR_Tasks_00_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 1

_action = [
	"startTask01",
	"<t color='#0099ff'>Start Task 1</t>",
	"",
	{
		[
			west,
			"secTask01",
			[
				"Search the village for repair supplies and/or ask civilians to aid you in repairing your vehicle. Contact HQ for assistance.",
				"Search Village/Contact HQ",
				"obj_marker_1"
			],
			getMarkerPos "obj_marker_1",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_01_active = true;
		LR_Tasks_01_ready = false;

		[1] remoteExec ["LR_Sec_fnc_setRespawn", 2];
	},
	{LR_Tasks_01_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask01",
	"<t color='#ff9900'>Complete Task 1</t>",
	"",
	{
		["secTask01", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_01_active = false;
		LR_Tasks_02_ready = true;
	},
	{LR_Tasks_01_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 2

_action = [
	"startTask02",
	"<t color='#0099ff'>Start Task 2</t>",
	"",
	{
		[
			west,
			"secTask02",
			[
				"Move to the plantation and complete your primary objective.",
				"Move to plantation",
				"obj_marker_2"
			],
			getMarkerPos "obj_marker_2",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_02_active = true;
		LR_Tasks_02_ready = false;
	},
	{LR_Tasks_02_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask02",
	"<t color='#ff9900'>Complete Task 2</t>",
	"",
	{
		["secTask02", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_02_active = false;
		LR_Tasks_03_ready = true;
	},
	{LR_Tasks_02_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 3

_action = [
	"startTask03",
	"<t color='#0099ff'>Start Task 3</t>",
	"",
	{
		[
			west,
			"secTask03",
			[
				"Search the plantation according to your Primary Objective.",
				"Search plantation",
				"obj_marker_2"
			],
			getMarkerPos "obj_marker_2",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_03_active = true;
		LR_Tasks_03_ready = false;
	},
	{LR_Tasks_03_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask03",
	"<t color='#ff9900'>Complete Task 3</t>",
	"",
	{
		["secTask03", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_03_active = false;
		LR_Tasks_04_ready = true;
	},
	{LR_Tasks_03_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"updateTask03",
	"<t color='#ff9900'>Task 3 Respawn Position</t>",
	"",
	{
		[2] remoteExec ["LR_Sec_fnc_setRespawn", 2];
	},
	{LR_Tasks_03_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 4

_action = [
	"startTask04",
	"<t color='#0099ff'>Start Task 4</t>",
	"",
	{
		[
			west,
			"secTask04",
			[
				"Find the Research Facility hinted at in the handwritten note you picked up and investigate it.",
				"Find Research Facility",
				"obj_marker_2"
			],
			objNull,
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_04_active = true;
		LR_Tasks_04_ready = false;
	},
	{LR_Tasks_04_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask04",
	"<t color='#ff9900'>Complete Task 4</t>",
	"",
	{
		["secTask04", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_04_active = false;
		LR_Tasks_05_ready = true;
	},
	{LR_Tasks_04_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 5

_action = [
	"startTask05",
	"<t color='#0099ff'>Start Task 5</t>",
	"",
	{
		[
			west,
			"secTask05",
			[
				"Locate and Investigate External Research Site Omega-1",
				"Investigate Research Site Omega-1",
				"obj_marker_2"
			],
			objNull,
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_05_active = true;
		LR_Tasks_05_ready = false;
	},
	{LR_Tasks_05_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask05",
	"<t color='#ff9900'>Complete Task 5</t>",
	"",
	{
		["secTask05", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_05_active = false;
		LR_Tasks_06_ready = true;
	},
	{LR_Tasks_05_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 6

_action = [
	"startTask06",
	"<t color='#0099ff'>Start Task 6</t>",
	"",
	{
		[
			west,
			"secTask06",
			[
				"Look for the research team. Search the higher levels of the temple thoroughly to locate the source of the extraneous signals picked up by the research team.",
				"Find extraneous Signal Source",
				"obj_marker_3"
			],
			getMarkerPos "obj_marker_3",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_06_active = true;
		LR_Tasks_06_ready = false;
		[3] remoteExec ["LR_Sec_fnc_setRespawn", 2];
	},
	{LR_Tasks_06_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask06",
	"<t color='#ff9900'>Complete Task 6</t>",
	"",
	{
		["secTask06", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_06_active = false;
		LR_Tasks_07_ready = true;
	},
	{LR_Tasks_06_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 7

_action = [
	"startTask07",
	"<t color='#0099ff'>Start Task 7</t>",
	"",
	{
		[
			west,
			"secTask07",
			[
				"Report back your findings to Headquarters. Await further orders...",
				"Report back to HQ",
				"obj_marker_3"
			],
			objNull,
			"ASSIGNED"
		] call BIS_fnc_taskCreate;
		LR_Tasks_07_active = true;
		LR_Tasks_07_ready = false;
	},
	{LR_Tasks_07_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask07",
	"<t color='#ff9900'>Complete Task 7</t>",
	"",
	{
		["secTask07", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_07_active = false;
		LR_Tasks_08_ready = true;
	},
	{LR_Tasks_07_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 8

_action = [
	"startTask08",
	"<t color='#0099ff'>Start Task 8</t>",
	"",
	{
		[
			west,
			"secTask08",
			[
				"Destroy the Device and all evidence of the secret project. CSAT must never recover this information!",
				"Destroy all evidence",
				"obj_marker_3"
			],
			getMarkerPos "obj_marker_3",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;

		LR_Tasks_08_active = true;
		LR_Tasks_08_ready = false;
	},
	{LR_Tasks_08_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask08",
	"<t color='#ff9900'>Complete Task 8</t>",
	"",
	{
		["secTask08", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_08_active = false;
		LR_Tasks_09_ready = true;
	},
	{LR_Tasks_08_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

// TASK 9

_action = [
	"startTask08",
	"<t color='#0099ff'>Start Task 9</t>",
	"",
	{
		[
			west,
			"secTask09",
			[
				"Escape the island from the Civilian Heliport.",
				"Escape!",
				"obj_marker_4"
			],
			getMarkerPos "obj_marker_4",
			"ASSIGNED"
		] call BIS_fnc_taskCreate;

		"LeadTrack01_F" remoteExec ["playMusic", 0];

		[99] call LR_Sec_fnc_setRespawn;

		LR_Tasks_09_active = true;
		LR_Tasks_09_ready = false;
	},
	{LR_Tasks_09_ready}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"completeTask08",
	"<t color='#ff9900'>Complete Task 9</t>",
	"",
	{
		["secTask09", "SUCCEEDED"] call BIS_fnc_taskSetState;
		LR_Tasks_09_active = false;
		LR_Tasks_10_ready = true;
	},
	{LR_Tasks_09_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;

_action = [
	"failTask08",
	"<t color='#ff0000'>Fail Task 9</t>",
	"",
	{
		["secTask09", "FAILED"] call BIS_fnc_taskSetState;
		LR_Tasks_09_active = false;
		LR_Tasks_10_ready = true;
	},
	{LR_Tasks_09_active}
] call ACE_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "CreatureActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToObject;
[["ACE_ZeusActions", "TaskActions"], _action] call ACE_interact_menu_fnc_addActionToZeus;
