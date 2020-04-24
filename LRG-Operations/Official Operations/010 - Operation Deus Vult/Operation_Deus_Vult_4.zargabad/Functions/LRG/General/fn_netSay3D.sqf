private ["_obj","_snd","_dst","_pth"];

_obj = _this select 0;	//object
_snd = _this select 1;	//sound
_dst = _this select 2;  //distance
_pth = _this select 3;  //pitch

// broadcast PV
PVEH_netSay3D = [_obj,_snd,_dst,_pth];
publicVariable "PVEH_netSay3D";

// run on current machine also if not dedi server

if (!hasInterface) exitWith {};

_obj say3D [_snd,_dst,_pth];