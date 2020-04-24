["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups; // Initializes the player/client side Dynamic Groups framework and registers the player group
//[] execVM "QS_icons.sqf";
///////////////////////////////Grass Cutting//////////////////////////////////////////////////////////////////////

//Grass Cutting Script added to all players when they join the server, and exists when they respawn.
null = [player] execVM "GrassCutter\grasscutter.sqf";
player addEventhandler["respawn","_this execVM 'GrassCutter\grasscutter.sqf'"];

////////////////////////////////////SaveZone///////////////////////////////////////////////////////////////////////
	
player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "", "", "", "", "_projectile"];
	if (_unit distance2D (getMarkerPos "shooter") < 300) then {
		deleteVehicle _projectile;
		hintC "Don't goof at base. Hold your horses soldier, don't throw, fire or place anything inside the base.";
	}}];

///////////////////////////////////// save gear when Virtual Arsenal closes//////////////////////////////////////

//[missionNamespace, "arsenalClosed",{	
//[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
//	hint "gear saved !"
//}] call BIS_fnc_addScriptedEventHandler;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////



