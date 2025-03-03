/*
	File: fn_building_fire_feature_event.sqf
	Author: Spoffy
	Date: 2020-10-17
	Last Update: 2020-10-17
	Public: No
	
	Description:
		Fires a specific callback for all features on an building
	
	Parameter(s):
		_building - Building to fire callback features on
		_eventName - Name of the callback to fire
		_arguments - Arguments to pass to the callback
	
	Returns:
		Results of firing the event on all features
	
	Example(s):
		[_myBuilding, "onBuildingPlaced", [_myBuilding]] call para_s_fnc_building_fire_feature_event
*/
params ["_building", "_eventName", "_arguments"];

(_building getVariable "para_s_build_features") apply {
	_arguments call (missionNamespace getVariable [getText (_x >> _eventName), {}]);
}