/*
	LRG MISSION TEMPLATE
	fn_SideChat.sqf
	Author: MitchJC
	Description: Temp enable Sidechat for selected roles to allow briefing.
*/

	if !(isClass (configFile >> "CfgPatches" >> "ace_main")) exitwith {};

	_EnabledDuration = 60;
	_SideChatAllowed = ["Mission Maker", "Command", "909EAW"];	
	
	_Group =  group player getVariable "LRG_section";	
	
	if (_Group in _SideChatAllowed) then {
	1 enableChannel [true, false];
	waitUntil {servertime > (_EnabledDuration * 60)};
	setCurrentChannel 5;
	1 enableChannel [false, false];
	};
	
