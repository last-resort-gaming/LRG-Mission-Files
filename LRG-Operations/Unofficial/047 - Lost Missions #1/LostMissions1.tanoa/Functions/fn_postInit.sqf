// Set music and sound volume

if (hasInterface) then {

//	1 fadeMusic 0.5;
//	1 fadeSound 0.5;

	player removeItem "UK3CB_BAF_HMNVS";
	player removeItem "optic_NVS";
};

if (isServer) then {
	{
		_x enableGunLights "ForceOn";
	} forEach allGroups;
};