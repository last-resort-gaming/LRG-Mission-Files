
tawvd_disablenone = true;
tawvd_maxRange = 10000;

_null = [] execVM "scripts\pilotCheck.sqf";
_null = [] execvm "scripts\vehicle\crew\crew.sqf";

player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "respawn_west") < 150) then {
		deleteVehicle _projectile;
		hintC "Are you some kind of special? No using Weapon Systems at base! I've had to write this because of retards like you!";
	}}];