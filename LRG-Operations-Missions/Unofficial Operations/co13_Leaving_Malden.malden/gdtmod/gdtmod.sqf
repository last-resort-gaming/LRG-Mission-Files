//gdtmod.sqf
//by HeinBloed
//http://www.gdt-server.net/
//===========================
sleep 0.1;
if (not isDedicated) then {
	[] execVM "gdtmod\gdtmod_3rdperson.sqf";
};
