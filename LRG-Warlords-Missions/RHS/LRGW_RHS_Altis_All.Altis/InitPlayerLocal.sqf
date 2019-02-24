
if (!hasInterface) exitWith {};

[] execVM "scripts\lrg\JoinMessages.sqf";

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	[] execVM "z\LRG Fundamentals\Addons\Main\Scripts\Earplugs\earplugs.sqf";
}];