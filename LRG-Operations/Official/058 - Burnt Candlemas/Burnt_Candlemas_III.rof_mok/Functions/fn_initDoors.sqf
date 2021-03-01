private _doors = [
	[1,2],
	[1],
	[1]
];

{
	private _house = missionNamespace getVariable format ["lockedhouse_%1", _forEachIndex];

	if (isNil "_house") then {systemChat format ["House %1 could not be found!", _forEachIndex]} else {
		{
			_house setVariable [format ["bis_disabled_door_%1", _x], 1, true];
		} forEach _x;
	};
} forEach _doors;