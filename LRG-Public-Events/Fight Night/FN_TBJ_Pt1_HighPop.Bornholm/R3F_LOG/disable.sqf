if (cycles isEqualTo 0) then {

cycles = 1;

hint "Mission is a go!";

deleteVehicle t1;
deleteVehicle t2;
deleteVehicle t3;
deleteVehicle t4;
deleteVehicle t5;
deleteVehicle t6;
deleteVehicle t7;
deleteVehicle t8;

systemChat "15 minutes of build time remaining";

sleep 300;

systemChat "10 minutes of build time remaining";

sleep 300;

systemChat "5 minutes of build time remaining";

sleep 300;

systemChat "Building Disabled";

disabled = true;

{
	_x removeAction 1;
	_x removeAction 3;
} forEach objectsIndex;

systemChat "Blufor have 30 minutes to steal the technology before Opfor backup arrives";

sleep 900;

systemChat "15 minutes remaining";

sleep 300;

systemChat "10 minutes remaining";

sleep 300;

systemChat "5 minutes remaining";

sleep 60;

systemChat "4 minutes remaining";

sleep 60;

systemChat "3 minutes remaining";

sleep 60;

systemChat "2 minutes remaining";

sleep 60;

systemChat "1 minute remaining";

"End2" call BIS_fnc_endMission;

};