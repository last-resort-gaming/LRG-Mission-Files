if (cycles isEqualTo 0) then {

cycles = 1;

[] execVM "scripts\respawnLoop.sqf";

["Mission is a go! Blufor have 45 minutes to escape!","systemChat", true] call BIS_fnc_MP;
["Go Go Go!","hint", true] call BIS_fnc_MP;
sleep 900;

["Blufor have 30 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 900;

["Blufor have 15 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 300;

["Blufor have 10 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 300;

["Blufor have 5 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 60;

["Blufor have 4 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 60;

["Blufor have 3 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 60;

["Blufor have 2 minutes to escape!","systemChat", true] call BIS_fnc_MP;

sleep 60;

["Blufor have 1 minute to escape!","systemChat", true] call BIS_fnc_MP;

sleep 60;

["End2", "BIS_fnc_endMission", true] call Bis_fnc_MP;

};