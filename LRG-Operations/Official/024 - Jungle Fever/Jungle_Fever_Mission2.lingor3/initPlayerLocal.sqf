
enableSaving false;
enableSentences false;
adminCurators = allCurators;

//------------------- client executions

if (hasInterface) then {

_null = [] execVM "scripts\vehicle\crew\crew.sqf"; 								// vehicle HUD
_null = [] execVM "scripts\pilotCheck.sqf"; 									// pilots only
player setVariable ["tf_sendingDistanceMultiplicator", 1.5];


player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "respawn_west") < 150) then {
		deleteVehicle _projectile;
		hintC "No using Weapon Systems at base!";
	}}];
	
};