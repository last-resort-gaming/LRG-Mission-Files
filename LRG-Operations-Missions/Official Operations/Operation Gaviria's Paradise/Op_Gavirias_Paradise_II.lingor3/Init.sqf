: /*
    LRG MISSION TEMPLATE
    Init.sqf
    Author: MitchJC
    Description: Scripts executed on player and server.
*/


// add PVEH for globally playing sound
if (isNil "PVEH_netSay3D") then {
  PVEH_NetSay3D = [objNull,0,0,0];
};

"PVEH_netSay3D" addPublicVariableEventHandler {
     private["_array"];
     _array = _this select 1;
    (_array select 0) say3D [(_array select 1),(_array select 2),(_array select 3)];
};