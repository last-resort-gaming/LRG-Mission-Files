_pos = getPosATL LaptopB;
_dir = getDir LaptopB;
deleteVehicle LaptopB;
LaptopBNew = createVehicle ["Land_Laptop_F", [21, 32, 0], [], 0,"NONE"];
[LaptopBNew, false] remoteExec ["enableSimulationGlobal", 2];
[LaptopBNew, false] remoteExec ["allowDamage", 2];
LaptopBNew SetPosATL _pos;
LaptopBNew setDir _dir;
nul = [LaptopBNew, "WindowsXPSD", 20, 1] call LR_fnc_netSay3D;


