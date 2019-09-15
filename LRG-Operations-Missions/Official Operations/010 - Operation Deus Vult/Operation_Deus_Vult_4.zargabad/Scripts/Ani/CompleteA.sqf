_pos = position LaptopA;
_dir = getDir LaptopA;
deleteVehicle LaptopA;
LaptopANew = createVehicle ["Land_Laptop_F", [21, 32, 0], [], 0,"NONE"];
[LaptopANew, false] remoteExec ["enableSimulationGlobal", 2];
[LaptopANew, false] remoteExec ["allowDamage", 2];
LaptopANew setPos _pos;
LaptopANew setDir _dir;
nul = [LaptopANew, "WindowsXPSD", 20, 1] call LR_fnc_netSay3D;