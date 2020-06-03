if ((not isServer) || {not LR_MissionStarted}) exitwith {};

// _type = 0 - Good Ending
// _type = 1 - Bad Ending
params ["_type"];

if (_type < 0) then {_type = 0;};
if (_type > 1) then {_type = 1;};

_endSong = ["demo_1", "out_for_a_walk"] select _type;
_length = getNumber (configFile >> "CfgMusic" >> _endSong >> "length");
_textTimes = [[100, 130, 165, 195], [52, 70, 110, 140]] select _type;

if (_type == 0) then {_length = 280};


_endSong remoteExec ["playMusic", 0];
[4, 0.1] remoteExec ["fadeSound", 0];
ace_hearing_disableVolumeUpdate = true;

[
	{
		[parseText "You played<br /><t font='PuristaBold' size='1.7'>Lost Missions #1<br />Task Force Echelon</t>", true, [15, 15], 15, 2.5, 0] remoteExec ["BIS_fnc_textTiles", 0];
	},
	[],
	_textTimes select 0
] call CBA_fnc_waitAndExecute;

[
	{
		[parseText "A mission by<br /><t font='PuristaBold' size='1.7'>Mokka</t>", true, [15, 15], 15, 2.5, 0] remoteExec ["BIS_fnc_textTiles", 0];
	},
	[],
	_textTimes select 1
] call CBA_fnc_waitAndExecute;

[
	{
		[parseText "Made for<br /><t font='PuristaBold' size='1.7'>Last Resort Gaming</t>", true, [15, 15], 15, 2.5, 0] remoteExec ["BIS_fnc_textTiles", 0];
	},
	[],
	_textTimes select 2
] call CBA_fnc_waitAndExecute;

[
	{
		[parseText "<br /><t font='PuristaBold' size='1.7'>Thank You For Playing!</t>", true, [15, 15], 30, 2.5, 0] remoteExec ["BIS_fnc_textTiles", 0];
	},
	[],
	_textTimes select 3
] call CBA_fnc_waitAndExecute;

[
	{
		params ["_type"];
		_state = ["EveryoneWon", "EveryoneLost"] select _type;

		_state call BIS_fnc_endMissionServer;
	},
	[_type],
	_length
] call CBA_fnc_waitAndExecute;