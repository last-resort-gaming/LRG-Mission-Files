/*
    File: fn_ai_job.sqf
    Author: Spoffy
    Date: 2020-06-12
    Last Update: 2020-06-12
    Public: No
    
    Description:
        Scheduler job for managing the harassment subsystem.
    
    Parameter(s):
        None
    
    Returns:
		None
    
    Example(s):
		["harass_manager", para_s_fnc_harass_job, [], 15] call para_g_fnc_scheduler_add_job;
*/

//Create harass squads for the players in the field, if possible
call para_s_fnc_harass_create_squads;
