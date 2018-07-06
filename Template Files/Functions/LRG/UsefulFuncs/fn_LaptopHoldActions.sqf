/*
	LRG MISSION TEMPLATE
	fn_LaptopHoldActions.sqf
	Author: MitchJC
	Description: Adds Hold Add Actions to Laptop
	
	Example:
	[_object, _title, _time] call LR_fnc_LaptopHoldActions;
	
	[this, "Download the Intel", 10] call LR_fnc_LaptopHoldActions;
*/


if (!isServer) exitWith {};

params ["_object", "_Title", "_Time"];

[
	_object,
	_Title,
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"_this distance _target < 3",
	"_caller distance _target < 3",
	{ [format["<t color='#FFBB00' size = '.5'>Processing</t>",(_this select 3) select 1],-1,0.8,(_this select 3) select 2,2,0,789] spawn BIS_fnc_dynamicText;},
	{},
	{ [format["<t color='#339900' size = '.5'>Process Complete</t>",(_this select 3) select 1],-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;
	_pos = getPosATL ((_this select 3) select 0);
	_dir = getDir ((_this select 3) select 0);
	deleteVehicle ((_this select 3) select 0);
	_Newobject = createVehicle ["Land_Laptop_F", [21, 32, 0], [], 0,"NONE"];
	[_Newobject, false] remoteExec ["enableSimulationGlobal", 2];
	[_Newobject, false] remoteExec ["allowDamage", 2];
	_Newobject SetPosATL _pos;
	_Newobject setDir _dir;
	playSound3D ["A3\Missions_F_Bootcamp\data\sounds\vr_shutdown.wss", _Newobject, false, getposATL _Newobject, 1, 1, 50];
	},
	{[format["<t color='#cc3232' size = '.5'>Aborted</t>",(_this select 3) select 1],-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;},
	[_object, _Title, _Time],
	_Time,
	0,
	true,
	false
] remoteExec ["BIS_fnc_holdActionAdd", 0, _object];