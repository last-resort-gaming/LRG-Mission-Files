/*
Maintainer: Socrates
    Compiles (in case if it wasn't compiled before) and calls UPSMON script. Arguments will be passed to UPSMON as usual. 

Arguments:
    <UNKNOWN> Same arguments as for UPSMON.

Return Value:
    <NIL>

Scope: Server
Environment: Any
Public: Yes
Dependencies:
    <CODE> UPSMON

Example:
[leader _groupX, _markerX, "SAFE", "RANDOMUP", "SPAWNED", "NOVEH2", "NOFOLLOW"] call A3A_fnc_proxyUPSMON;
*/

#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

//this could be called in initClient so proxy wouldn't needed, but I have a suspicion that clients don't need it, only HCs and server
if (isNil "fnc_UPSMON") exitWith {
	fnc_UPSMON = compileFinal preprocessFileLineNumbers QPATHTOFOLDER(scripts\UPSMON.sqf);
	_this spawn fnc_UPSMON;
};

_this spawn fnc_UPSMON;