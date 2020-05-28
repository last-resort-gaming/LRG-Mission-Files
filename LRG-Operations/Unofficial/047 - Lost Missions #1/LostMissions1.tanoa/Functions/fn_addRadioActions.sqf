params ["_object"];


_action = [
	"playRadio01",
	"Turn Radio On",
	"",
	{
		params ["_target", "_caller", "_args"];

		_sound = selectRandom ["reverse_voice_female", "reverse_voice_male", "short_glitch_5", "glitched_vinyl"];

		[_target, _sound, 250, 1, 3] remoteExec ["LR_fnc_Sound3dOnObject", 2];
		_target setVariable ["LR_radioPlaying", true, true];
	},
	{!(_target getVariable ["LR_radioPlaying", false])}
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ACE_interact_menu_fnc_addActionToObject;


_action = [
	"stopRadio01",
	"Turn Radio Off",
	"",
	{
		params ["_target"];
		_soundObjects = _target getVariable ["SoundObjects", []];
		{
			deleteVehicle _x;
		} forEach _soundObjects;
		_target setVariable ["LR_radioPlaying", false, true];
	},
	{_target getVariable ["LR_radioPlaying", false]}
] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ACE_interact_menu_fnc_addActionToObject;