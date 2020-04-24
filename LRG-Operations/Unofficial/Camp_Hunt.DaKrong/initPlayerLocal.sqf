if ((!isServer) && (player != player)) then {waitUntil {player == player};};

//Group Manager
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

//save loadout
[missionNamespace, "arsenalClosed", {	
	player setVariable ["Saved_Loadout",getUnitLoadout player];
}] call BIS_fnc_addScriptedEventHandler;

	




