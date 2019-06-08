// Random starting location selector script
// Usage: _nil = [this] execVM "scripts\randompos.sqf";

// Anten
_pos = ["anten_marker","anten_marker_1","anten_marker_2"];

// Randomly select the marker to used
_startPos = _pos call BIS_fnc_selectRandom;

// Move the unit or object to the marker
anten setPos (getMarkerPos _startPos);

// Set the direction of the unit or object to be the same as the marker
anten setDir (markerDir _startPos);


// Camp1
_pos = ["camp_marker", "camp_marker_1", "camp_marker_2","camp_marker_3","camp_marker_4"];

// Randomly select the marker to used
_startPos = _pos call BIS_fnc_selectRandom;

// Move the unit or object to the marker
camp1 setPos (getMarkerPos _startPos);

// Set the direction of the unit or object to be the same as the marker
camp1 setDir (markerDir _startPos);


// Cache1
_pos = ["c1m", "c1m_1", "c1m_2","c1m_3","c1m_4"];
_startPos = _pos call BIS_fnc_selectRandom;
cache1 setPos (getMarkerPos _startPos);
cache1 setDir (markerDir _startPos);

//aa1
_pos = ["aa1m", "aa1m_1", "aa1m_2","aa1m_3","aa1m_4"];
_startPos = _pos call BIS_fnc_selectRandom;
aa1 setPos (getMarkerPos _startPos);
aa1 setDir (markerDir _startPos);

//def1
_pos = ["def1m", "def1m_1", "def1m_2"];
_startPos = _pos call BIS_fnc_selectRandom;
def1 setPos (getMarkerPos _startPos);
def1 setDir (markerDir _startPos);

//mortar1
_pos = ["mortar1m", "mortar1m_1", "mortar1m_2","mortar1m_3"];
_startPos = _pos call BIS_fnc_selectRandom;
mortar1 setPos (getMarkerPos _startPos);
mortar1 setDir (markerDir _startPos);

//hvt
_pos = ["hvtm","hvtm_1","hvtm_2","hvtm_3","hvtm_4"];
_startPos = _pos call BIS_fnc_selectRandom;
hvt setPos (getMarkerPos _startPos);
hvt setDir (markerDir _startPos);
