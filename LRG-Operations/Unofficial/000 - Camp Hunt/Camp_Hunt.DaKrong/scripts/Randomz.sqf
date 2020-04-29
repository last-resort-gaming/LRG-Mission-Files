sleep 5;

_markerstr = createMarker ["antenz", anten]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [60,60];

_markerstr = createMarker ["antentarget", position anten vectorAdd [150 - random 300, 150 - random 300, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_unknown";
"antentarget" setMarkerText "Communications";
"antentarget" setMarkerColor "ColorRed";

_markerstr = createMarker ["antenpz", anten]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [600,600];

_markerstr = createMarker ["camp1z", camp1];
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [60,60];

_markerstr = createMarker ["camptarget", position camp1 vectorAdd [150 - random 300, 150 - random 300, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_unknown";
"camptarget" setMarkerText "Camp";
"camptarget" setMarkerColor "ColorRed";

_markerstr = createMarker ["camp1pz", camp1];
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [600,600];

//caches

_markerstr = createMarker ["cachem1", position cache1 vectorAdd [70 - random 100, 70 - random 100, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_unknown";
"cachem1" setMarkerText "Supply point #1";
"cachem1" setMarkerColor "ColorRed";

_markerstr = createMarker ["cachez1", cache1];
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [80,80];

//aa

_markerstr = createMarker ["aa1z", aa1]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [150,150];

_markerstr = createMarker ["aa1target", position aa1 vectorAdd [150 - random 300, 150 - random 300, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_unknown";
"aa1target" setMarkerText "AA position";
"aa1target" setMarkerColor "ColorRed";

_markerstr = createMarker ["aa1pz", aa1]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [600,600];

//def1

_markerstr = createMarker ["def1z", def1]; 
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerSize [100,100];

_markerstr = createMarker ["def1target", position def1 vectorAdd [1 - random 2, 1 - random 2, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "mil_circle";
"def1target" setMarkerText "Defend location";
"def1target" setMarkerColor "ColorBlue";

//mortar1

_markerstr = createMarker ["mortar1z", mortar1]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [150,150];

_markerstr = createMarker ["mortar1target", position mortar1 vectorAdd [150 - random 300, 150 - random 300, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_unknown";
"mortar1target" setMarkerText "Mortar position";
"mortar1target" setMarkerColor "ColorRed";

_markerstr = createMarker ["mortar1pz", mortar1]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [600,600];

//hvt
_markerstr = createMarker ["hvtz", hvt]; 
_markerstr setMarkerShape "RECTANGLE";
_markerstr setMarkerSize [80,80];

_markerstr = createMarker ["hvttarget", position hvt vectorAdd [150 - random 200, 150 - random 200, 0]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_unknown";
"hvttarget" setMarkerText "HVT";
"hvttarget" setMarkerColor "ColorRed";

//clear zone
_markerstr = createMarker ["clear", aa1]; 
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerSize [14,14];

_markerstr = createMarker ["clear_1", anten]; 
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerSize [14,14];

_markerstr = createMarker ["clear_2", mortar1]; 
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerSize [14,14];

_markerstr = createMarker ["clear_3", camp1]; 
_markerstr setMarkerShape "Ellipse";
_markerstr setMarkerSize [20,20];


_removeObjects = compile loadFile "removeMapObjects.sqf";
_null = [["clear","clear_1","clear_2","clear_3"]] call _removeObjects;

{_x SetMarkerAlpha 0} forEach ["clear","clear_1","clear_2","clear_3"];