
enableSaving false;
enableSentences false;
adminCurators = allCurators;

//------------------- client executions

if (hasInterface) then {

_null = [] execVM "scripts\vehicle\crew\crew.sqf"; 								// vehicle HUD
_null = [] execVM "scripts\pilotCheck.sqf"; 									// pilots only
_null = [] execVM "scripts\misc\QS_icons.sqf";									// QS Icons
 player setVariable ["tf_sendingDistanceMultiplicator", 1.5];					// Increase Radio Range.


player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "respawn_west") < 150) then {
		deleteVehicle _projectile;
		hintC "Are you some kind of special? No using Weapon Systems at base! I've had to write this because of retards like you!";
	}}];
	
};
playMusic "BF1943";
[player, "Welcome to Exercise: Three Point Contact                                         ", 10, 170, 65, 1] call BIS_fnc_establishingShot;
