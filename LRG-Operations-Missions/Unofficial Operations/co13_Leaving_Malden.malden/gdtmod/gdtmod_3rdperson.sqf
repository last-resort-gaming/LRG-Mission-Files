//gdtmod_3rdperson.sqf
//by HeinBloed
//http://www.gdt-server.net/
//===========================
sleep 0.1;
while {true} do {
	sleep 0.1;
	waitUntil {((((cameraView == "External") and ((vehicle player) == player)) or (cameraView == "GROUP")) and alive player)};
	(vehicle player switchCamera "INTERNAL");
};
