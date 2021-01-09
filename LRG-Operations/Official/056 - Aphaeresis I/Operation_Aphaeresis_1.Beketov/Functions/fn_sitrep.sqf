params ["_location"];

_rawDate = date;
_currentDate = format ["%1-%2%3-%4%5 %6%7:%8%9",
	date select 0,
	["", "0"] select (date select 2 < 10),
	date select 2,
	["", "0"] select (date select 1 < 10),
	date select 1,
	["", "0"] select (date select 3 < 10),
	date select 3,
	["", "0"] select (date select 4 < 10),
	date select 4];

_currentGrid = mapGridPosition player;

[[_location,1,2,3],[_currentDate,1,2,3],[format ["%1 - %2",profileName,_currentGrid],1,2,3]] spawn BIS_fnc_EXP_camp_SITREP;