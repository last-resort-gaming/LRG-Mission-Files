/*
	LRG MISSION TEMPLATE
	fn_TimedArsenal.sqf
	Author: MitchJC
	Description: If EnableArsenal and TimedArsenal true, Arsenal will be removed after ArsenalDuration.
*/
if (!EnableArsenal) exitwith {};
if ((TimedArsenal) && (isServer)) then {

_handle = [
{

if (servertime > (ArsenalDuration * 60)) exitwith {

		{
		deletevehicle(missionNamespace getVariable[_x, objNull]);
		}
		forEach ArsenalName;

		[format ["<t color='#d60007' size = '.5'>Arsenal Removed</t>"],1,-0.2,10,0,0,789] remoteExec ["BIS_fnc_dynamicText",0,false];		

		[_handle] call CBA_fnc_removePerFrameHandler;
		};

		[format ["<t color='#336B87' size = '.5'>Arsenal<br />%1 minutes remaining.</t>",round (((ArsenalDuration * 60) - round time) /60)],1,-0.2,10,2,0,789] remoteExec ["BIS_fnc_dynamicText",0,false];
		
}, 60, []] call CBA_fnc_addPerFrameHandler;

};