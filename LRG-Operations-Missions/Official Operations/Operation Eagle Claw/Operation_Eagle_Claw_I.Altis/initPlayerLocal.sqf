enableSaving false;
enableSentences false;
adminCurators = allCurators;

//------------------- client executions

if (hasInterface) then {
 
_null = [] execVM "scripts\vehicle\crew\crew.sqf"; 								// vehicle HUD
_null = [] execVM "scripts\pilotCheck.sqf"; 									// pilots only
_null = [] execVM "scripts\misc\QS_icons.sqf";									// QS Icons
 player setVariable ["tf_sendingDistanceMultiplicator", 1.5];					// Increase Radio Range.


};

