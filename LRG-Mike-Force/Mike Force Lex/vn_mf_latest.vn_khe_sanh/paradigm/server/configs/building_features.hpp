class CfgBuildingFeatures
{
	class example
	{
		//Called when a building is first placed
		onBuildingPlaced = "";
		//Called when the objects that are part of the building change
		onBuildingObjectsChanged = "";
		//Called when the building becomes functional
		onBuildingFunctional = "";
		//Called every building tick (when building supplies are taken)
		onBuildingTick = "";
		//Called when the building becomes stops being functional - including when it's deleted.
		onBuildingNonFunctional = "";
		//Called when the building is deleted
		onBuildingDeleted = "";
		//Called when the current supply level of the building changes.
		onSuppliesChanged = "";
		//Called when the building is connected to an FOB
		onBaseConnected = "";
		//Called when the building is disconnected from an FOB
		onBaseDisconnected = "";
		//onBuildingSave = "";
		//onBuildingLoad = "";
	};

	class debug
	{
		onBuildingPlaced = "debug_placed";
		onBuildingObjectsChanged = "debug_changed";
		onBuildingFunctional = "debug_functional";
		onBuildingTick = "debug_tick";
		onBuildingNonFunctional = "debug_nonfunctional";
		onBuildingDeleted = "debug_deleted";
		onBaseConnected = "debug_connected";
		onBaseDisconnected = "debug_disconnected";
	};

	class maintenance
	{
		onBuildingObjectsChanged = "para_s_fnc_bf_maintenance_on_building_objects_changed";
	};

	class radio
	{
		onBuildingFunctional = "para_s_fnc_bf_radio_on_functional";
		onBuildingNonFunctional = "para_s_fnc_bf_radio_on_nonfunctional";
	};

	class respawn
	{
		onBuildingFunctional = "para_s_fnc_bf_respawn_on_functional";
		onBuildingNonFunctional = "para_s_fnc_bf_respawn_on_nonfunctional";
		onSuppliesChanged = "para_s_fnc_bf_respawn_on_supplies_changed";
	};

	class vehicle_spawning
	{
		onBuildingPlaced = "para_s_fnc_bf_veh_spawn_on_building_placed";
		onBuildingObjectsChanged = "para_s_fnc_bf_veh_spawn_on_building_objects_changed";
		onBuildingDeleted = "para_s_fnc_bf_veh_spawn_on_building_deleted";
	};
};
