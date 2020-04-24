/*
	LRG MISSION TEMPLATE
	LR_fnc_Casualty.sqf
	Author: MitchJC
	Description: Used to set an AI to a triage state via hold add actions.
	
	Syntax
	[_object] call LR_fnc_Casualty;
	
	Parameters
	_object - Object the addaction is applied to.  <OBJECT>
	
	Example 1:	[this] call LR_fnc_Casualty;

*/
params ["_object"];

if (isserver) then {
	_object setVariable ["TFixed", True, True];
	_object setVariable ["EFixed", True, True];
};

if (!hasinterface) exitwith {};
//========================= Tail Damage

_object addAction [
    "<t color='#e74c3c'>Take out Tail</t>", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

	[_target, ["hitVRotor", 1.0]] remoteExec ["setHitPointDamage",0,true];
    },
    [],
    1.5, 
    true, 
    false, 
    "",
    "",
    5,
    false,
    "",
    ""
];



//========================= Engine Damage


_object addAction [
    "<t color='#e74c3c'>Take out Engines</t>", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

	[_target, ["hitEngine", 1.0]] remoteExec ["setHitPointDamage",0,true];
    },
    [],
    1.5, 
    true, 
    false, 
    "",
    "",
    5,
    false,
    "",
    ""
];

//=================== Fix Tail


_object addAction [
    "<t color='#e74c3c'>Fix Tail</t>", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

	[_target, ["hitVRotor", 0.0]] remoteExec ["setHitPointDamage",0,true];
    },
    [],
    1.5, 
    true, 
    false, 
    "",
    "",
    5,
    false,
    "",
    ""
];

//=================== Fix Engines


_object addAction [
    "<t color='#e74c3c'>Fix Engines</t>", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];

	[_target, ["hitEngine", 0.0]] remoteExec ["setHitPointDamage",0,true];
    },
    [],
    1.5, 
    true, 
    false, 
    "",
	"",
    5,
    false,
    "",
    ""
];
