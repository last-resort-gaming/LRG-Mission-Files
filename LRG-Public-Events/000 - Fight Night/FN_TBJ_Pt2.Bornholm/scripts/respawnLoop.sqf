while {cycles isEqualTo 1} do {

private _blufor = [];

{if ((side _x) == west) then {_blufor pushBack _x}} forEach allUnits;

"respawn_west" setMarkerPos ((getPos (selectRandom _blufor)) vectorAdd [-200,0,0]);

sleep 60;

};