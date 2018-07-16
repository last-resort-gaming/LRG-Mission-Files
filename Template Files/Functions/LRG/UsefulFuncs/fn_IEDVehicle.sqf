/*
Function: LR_fnc_IEDVehicle

Description:
	Sets up a given vehicle as a driven IED. The explosive will be armed
	and primed for detonation if any player comes within the given radius.
	The explosives will detonate roughly after the time given has passed.
	The detonation may also produce smaller secondary detonations. If set
	to true, an announcement will be made on the sideChat once the IED
	has been armed, indicating the approximate time until detonation.

Parameters:
	_vehicle - The vehicle which shall be initialized
	_detonationTime - The time in seconds after which the explosives will go off once armed
	_proximityRadius - The IED will be armed if any player comes closer to the vehicle than this radius (in metres)
	_secondaries - Set to true to have the detonation of the IED also produce a random amount of secondary explosions around the main detonation
	_announceArmed - Set to true to make an announcement on the sideChat once the IED has been armed

Return Values:
	None

Examples:
    --- Code
	// In the init field of a vehicle in the editor (e.g. a Truck)
	[
		this,
		120,
		20,
		true,
		true
	] call LR_fnc_IEDVehicle;
	---

Author:
	Mokka
*/

params [
	["_vehicle", objNull],
	["_detonationTime", 120],
	["_proximityRadius", 20],
	["_secondaries", true],
	["_announceArmed", true]
];

// Check if we are using a valid vehicle.
if (not (_vehicle isKindOf "LandVehicle")) exitWith {
	systemChat "LR_fnc_IEDVehicle: Invalid vehicle passed, needs to be a land vehicle!";
	};

// Add PFH for proximity checking
[
	{
		(_this select 0) params ["_vehicle", "_proximityRadius", "_detonationTime", "_announceArmed"];
		_armed = _vehicle getVariable ["IEDarmed", false];
		_disarmed = _vehicle getVariable ["IEDdisarmed", false];
		{
			if ((_vehicle distance2D _x) < _proximityRadius && (not _disarmed) && (not _armed)) then {
				_vehicle setVariable ["IEDarmed", true];

				if (_announceArmed) then {
					// Tell everyone that this is a thing that happened if the user so wishes:
					[[west, "HQ"], format ["The IED has been armed and will detonate in %1 seconds!",_detonationTime]] remoteExec ["sideChat",0];
				};
			};
		} forEach allPlayers;
	},
	5,
	[_vehicle, _proximityRadius, _detonationTime, _announceArmed]
] call CBA_fnc_addPerFrameHandler;

// Add PFH to check for explosives armed
[
	{
		(_this select 0) params ["_vehicle", "_detonationTime", "_secondaries"];

		_armed = _vehicle getVariable ["IEDarmed", false];
		_disarmed = _vehicle getVariable ["IEDdisarmed", false];
		_destroyed = _vehicle getVariable ["IEDdetonated",false];

		if ((not _armed) || _disarmed || _destroyed) exitWith {};

		_startTime = _vehicle getVariable ["startTime", 0];

		if (_startTime == 0) then {
			_startTime = time;
			_vehicle setVariable ["startTime",_startTime];
		};

		// If the delta of startTime and current time exceeds the detonation timer,
		// we blow the vehicle up!
		// We do this check every frame since we want to be able to disarm the bomb.
		if ((time - _startTime) >= _detonationTime) then {

			_vehicle setVariable ["IEDdetonated", true, true];

			// Set the amount of secondary explosions according to the param.
			if (_secondaries) then {
				_secArray = [ceil (random 8), random 10, random 8];
			} else {
				_secArray = [0, 0, 0];
			};

			// Detonate using LR_fnc_SpawnExplosives.
			[
				0, 
				position _vehicle, 
				_secArray,
				"R_TBG32V_F"							// This is an AP rocket warhead, bound to do some damage.
			] call LR_fnc_SpawnExplosives;
		};
	},
	1,
	[_vehicle, _detonationTime, _secondaries]
] call CBA_fnc_addPerFrameHandler;

// Add a holdAction for disarming the bomb.
[
	 _vehicle
	,"Disarm IED"
	,"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa"
	,"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa"
	,"isplayer _this && {_this distance _target < 5} && {_target getVariable [""IEDarmed"",false]}"
	,"true"
	,{ ["<t color='#FFBB00' size = '.5'>You're disarming the IED.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;}
	,{}
	,{ 	
		(_this select 0) setvariable ["IEDdisarmed", true, true];
		["<t color='#339900' size = '.5'>You've disarmed the IED.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;
	},
	{["<t color='#cc3232' size = '.5'>You've stopped disarming the IED.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;}
	,[]
	,random [5, 7.5, 10]
	,-92
	,true
	,false
] remoteExec ["BIS_fnc_holdActionAdd", 0, true];