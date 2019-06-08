
if (isServer) then {
	[] call compileFinal preprocessFileLineNumbers "scripts\init_server.sqf";
};
execVM "scripts\grenadeStop.sqf";

