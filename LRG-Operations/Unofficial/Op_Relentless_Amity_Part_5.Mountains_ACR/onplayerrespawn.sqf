player enableFatigue FALSE;
{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;


_pos = getMarkerPos "respawn_pilot";
_pilots = ["UK3CB_BAF_HeliPilot_RAF"];
_iampilot = ({typeOf player == _x} count _pilots) > 0;
if (_iampilot) then {
	player setDir 170;
	player setPosATL [(((_pos select 0) + random 3) - random 6),(((_pos select 1) + random 3) - random 6),0];;
};

