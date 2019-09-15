["LRG_Logging: Safe Zone Enabled. Distance set to %1 meters.", safezoneDistance] call BIS_fnc_logFormat;

	player addEventHandler["FiredMan", {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_mag", "_projectile", "_veh"];

    if (_weapon in ["CMFlareLauncher", "CMFlareLauncher_Singles", "CMFlareLauncher_Triples","UK3CB_BAF_CMFlareLauncher","UK3CB_BAF_IRJammer","rhsusf_weap_CMFlareLauncher"])  exitWith {true};
    if !(cameraOn isEqualTo (vehicle player)) exitWith {true};

    _checkObject = [_veh, _unit] select isNull _veh;
	
	if (_checkObject distance2D (getMarkerPos "respawn_west") < safezoneDistance) exitWith {
		deleteVehicle _projectile;
		hintC "Denied.";
	}}];