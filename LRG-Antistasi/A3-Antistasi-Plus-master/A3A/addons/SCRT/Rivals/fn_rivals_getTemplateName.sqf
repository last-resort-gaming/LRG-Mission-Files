/*
Author: Socrates
Description:
    Gets rivals classnames from Templates.hpp and return filepath to template depending on current modset.

Return Value: 
	<STRING> Path to rivals faction file

Scope: Server
Environment: unscheduled
Public: Yes
Dependencies:

Example: [] call A3A_fnc_rivals_getTemplateName;

License: MIT License
*/

#include "..\defines.inc"
FIX_LINE_NUMBERS()

params [
	["_rebTemplate", "", [""]]
];

if (_rebTemplate isEqualTo "") exitWith {
	Error("For some reason rebel template variable is not defined.");
};

//TODO: This should be in a template selector menu later

private _rivalConfigs = "getText(_x >> 'side') isEqualTo 'Riv'" configClasses(configfile/"A3A"/"Templates");

if (_rivalConfigs isEqualTo []) exitWith {
	Error("No rivals classes found!");
};


private _rebTemplateRoot = (_rebTemplate splitString "_") select 0; //Vanilla_, Aegis_ etc
private _cfg = (_rivalConfigs select {_rebTemplateRoot in ((configName _x) splitString "_")}) select 0;

missionNamespace setVariable ["A3A_riv_template", configName _cfg]; // don't actually need this atm, but whatever

Info_1("Selected rivals config: %1", str _cfg);

private _basepath = getText (_cfg/"basepath") + "\";
private _file = getText (_cfg/"file") + ".sqf";

_basepath + _file