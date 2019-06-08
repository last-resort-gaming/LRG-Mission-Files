
enableSaving false;
enableSentences false;
adminCurators = allCurators;

//------------------- client executions

if (hasInterface) then {


/*
_intro = [] Spawn {
	titleCut ["", "BLACK FADED", 999];
	_msg = format ["Willkommen, %1,  auf Insel Sark, du blutiger Anfànger. \n\n Stahlhelm auf und ab in den Kampf, Kanonenfutter.",str profileName];
	waitUntil{!(isNil "BIS_fnc_init")};
	titletext  [_msg,"BLACK"];
	sleep 13;
	titleFadeOut 2;
	titleCut ["", "BLACK IN", 2];
};

playMusic "Erika";
*/
[] execVM "scripts\Message.sqf";

_null = [] execVM "scripts\vehicle\crew\crew.sqf"; 								// vehicle HUD
_null = [] execVM "scripts\pilotCheck.sqf"; 									// pilots only
_null = [] execVM "scripts\misc\QS_icons.sqf";									// QS Icons
 player setVariable ["tf_sendingDistanceMultiplicator", 1.5];					// Increase Radio Range.


player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "respawn_west") < 150) then {
		deleteVehicle _projectile;
		hintC "Bist du komplett bescheuert, du Arschgeige?";
	}}];
	
};
