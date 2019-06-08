_pos = position LaptopD;
_dir = getDir LaptopD;
deleteVehicle LaptopD;
LaptopDNew = createVehicle ["Land_Laptop_F", [21, 32, 0], [], 0,"NONE"];
[LaptopDNew, false] remoteExec ["enableSimulationGlobal", 2];
[LaptopDNew, false] remoteExec ["allowDamage", 2];
LaptopDNew setPos _pos;
LaptopDNew setDir _dir;
nul = [LaptopDNew, "WindowsXPSD", 20, 1] call LR_fnc_netSay3D;