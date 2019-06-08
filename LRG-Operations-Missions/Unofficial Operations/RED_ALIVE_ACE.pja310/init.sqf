///////////////////////////////////ExecVM Loud//////////////////////////////////////////////////////////////////////

execVM "scripts\NRE_earplugs.sqf";
script=[] execVM "Titles2.sqf";
//execVM "SaveGear.sqf";


///////////////////////////////Markers RallyPoint/////////////////////////////////////////////////////////////////////-
[] spawn {
  while {not isnull wsquadRP1} do { "marker_0" setmarkerpos getpos wsquadRP1; sleep 0.5; };
};
[] spawn {
  while {not isnull wsquadRP2} do { "marker_1" setmarkerpos getpos wsquadRP2; sleep 0.5; };
};
[] spawn {
  while {not isnull wsquadRP3} do { "marker_2" setmarkerpos getpos wsquadRP3; sleep 0.5; };
};
[] spawn {
  while {not isnull wsquadRP4} do { "marker_3" setmarkerpos getpos wsquadRP4; sleep 0.5; };
};
[] spawn {
  while {not isnull RP_west} do { "marker_4" setmarkerpos getpos RP_west; sleep 0.5; };
};
[] spawn {
  while {not isnull supplybox} do { "marker_5" setmarkerpos getpos supplybox; sleep 0.5; };
};
[] spawn {
  while {not isnull ammobox} do { "marker_6" setmarkerpos getpos ammobox; sleep 0.5; };
};

//////////////////////////////////////////CHVD SETTINGS///////////////////////////////////////////////////////////////-

//CH View Distance Script
//CHVD_allowNoGrass = true;   // Set 'false' if you want to disable "None" option for terrain (default: true)
//CHVD_maxView = 7500;      // Set maximum view distance (default: 12000)
//CHVD_maxObj = 5000;       // Set maximimum object view distance (default: 12000)

