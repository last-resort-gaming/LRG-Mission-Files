// possible indices are:
// 0 - spawn camp
// 1 - mission start village
// 2 - camp near plantation
// 99 - ded

params [["_idx", 0]];

if (!isServer) exitWith {};

{
	if !(_x getUnitTrait "Mission Maker") then {
		_x setVariable ["StartingPos", getMarkerPos (format ["resp_mkr_%1", _idx])];
    	_x setVariable ["StartingDir", getDir _x];
	};

	if (_idx > 0) then {
		"The Game has been saved. Respawn position updated." remoteExec ["hint", _x];
	};

} forEach allPlayers;