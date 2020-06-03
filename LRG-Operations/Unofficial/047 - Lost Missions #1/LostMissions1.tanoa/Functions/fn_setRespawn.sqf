// possible indices are:
// 0 - spawn camp
// 1 - mission start village
// 2 - camp near plantation
// 3 - crashed car near temple
// 99 - ded

params [["_idx", 0]];

if (!isServer) exitWith {};

{
	if !(_x getUnitTrait "Mission Maker") then {
		_x setVariable ["StartingPos", getMarkerPos (format ["resp_mkr_%1", _idx]), true];
    	_x setVariable ["StartingDir", getDir _x, true];
	};

	if (_idx > 0) then {
		"The Game has been saved. Respawn position updated." remoteExec ["hint", _x];
	};

} forEach allPlayers;