private _doors = [
	[1,2,3],
	[2,4,8],
	[4],
	[2],
	[3,4],
	[3,4,5],
	[5,6],
	[1,2,3],
	[1,4,5],
	[1],
	[1],
	[1],
	[2],
	[1,2,3],
	[2,3,4],
	[1,2,5,6],
	[3,4],
	[3,4],
	[1,2,3,5,6,7,8],
	[1],
	[1],
	[3,4],
	[2],
	[2,3,4,5],
	[2],
	[1,2,3,4]
];

{
	private _house = missionNamespace getVariable format ["lockedhouse_%1", _forEachIndex];

	if (isServer) then {
		[_house, format ["lockedhouse_%1", _forEachIndex]] remoteExec ["setVehicleVarName", 0, true];
	};
	if (isNil "_house") exitWith {systemChat format ["House %1 could not be found!", _forEachIndex]};

	{
		_house setVariable [format ["bis_disabled_door_%1", _x], 1, true];
	} forEach _x;
} forEach _doors;