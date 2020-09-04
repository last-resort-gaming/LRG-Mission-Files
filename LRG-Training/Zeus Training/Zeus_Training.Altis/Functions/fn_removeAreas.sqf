if (not isServer) exitWith {};
{
	removeAllCuratorEditingAreas _x;
} forEach allCurators;