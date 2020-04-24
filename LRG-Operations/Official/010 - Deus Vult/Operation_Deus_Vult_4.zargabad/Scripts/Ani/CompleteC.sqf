_pos = position LaptopC;
_dir = getDir LaptopC;
deleteVehicle LaptopC;
LaptopCNew = createVehicle ["Land_Laptop_F", [21, 32, 0], [], 0,"NONE"];
[LaptopCNew, false] remoteExec ["enableSimulationGlobal", 2];
[LaptopCNew, false] remoteExec ["allowDamage", 2];
LaptopCNew setPos _pos;
LaptopCNew setDir _dir;
nul = [LaptopCNew, "WindowsXPSD", 20, 1] call LR_fnc_netSay3D;