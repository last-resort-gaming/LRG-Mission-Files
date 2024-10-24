/*
    File: fn_respawn_points_init.sqf
    Author: Spoffy
    Date: 2020-10-10
    Last Update: 2020-10-10
    Public: No
    
    Description:
		Sets up main mission respawn points
    
    Parameter(s):
		None
    
    Returns:
		None
    
    Example(s):
		[] call vn_mf_fnc_respawn_points_init
*/

vn_mf_respawn_points = vn_mf_markers_base_respawns apply {
	[west, _x, markerText _x] call BIS_fnc_addRespawnPosition
};