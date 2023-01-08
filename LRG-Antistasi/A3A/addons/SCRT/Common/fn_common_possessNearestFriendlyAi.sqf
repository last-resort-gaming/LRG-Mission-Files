/*
Maintainer: Socrates
   Posesses nearest AI unit with the ability to help player by his own hands (helps when AI got stuck somewhere). 
   Local only.

Return Value:
    <ARRAY> Units

Scope: Client
Environment: Any
Public: Yes

Example:
[] call SCRT_fnc_common_getNearFriendlyAiUnits
*/

#include "\a3\ui_f\hpp\definedikcodes.inc"

params ["_aiUnits"];

if (_aiUnits isEqualTo []) exitWith {};

private _unit = _aiUnits select 0;

if (_unit == Petros) exitWith {
	[localize "STR_control_unit_hint_header", localize "STR_control_unit_error_petros"] call A3A_fnc_customHint;
};
if (isPlayer _unit) exitWith {
	[localize "STR_control_unit_hint_header", localize "STR_control_unit_error_no_player"] call A3A_fnc_customHint;
};
if (!(alive _unit) or (_unit getVariable ["incapacitated",false]))  exitWith {
	[localize "STR_control_unit_hint_header", localize "STR_control_unit_error_alive_only"] call A3A_fnc_customHint;
};
if (side _unit != teamPlayer) exitWith {
	[localize "STR_control_unit_hint_header", format [localize "STR_control_unit_error_rebel_only",A3A_faction_reb get "name"]] call A3A_fnc_customHint;
};

private _owner = player getVariable ["owner",player];
if (_owner!=player) exitWith {
	[localize "STR_control_unit_hint_header", localize "STR_control_unit_error_ai_recursion"] call A3A_fnc_customHint;
};

_unit setVariable ["owner",player,true];

private _face = face _unit;
private _speaker = speaker _unit;

private _originalBody = player;
player setVariable ["originalBody", _originalBody];
player setVariable ["destinationBody", _unit];
_unit setVariable ["originalBodyRef", _originalBody];

private _eh1 = player addEventHandler ["HandleDamage", {
	params ["_unit"];
	systemChat "EH1";
	diag_log "EH1";
	_unit removeEventHandler ["HandleDamage",_thisEventHandler];
	selectPlayer _unit;
	(units group player) joinsilent group player;
	group player selectLeader player;
	[localize "STR_control_unit_hint_header", localize "STR_control_unit_damage_control_return_player"] call A3A_fnc_customHint;
	private _destinationBody  = _unit getVariable ["destinationBody", objNull];
	if (!isNull _destinationBody) then {
		_destinationBody setVariable ["controlReturned", true];
	};
	nil;
}];
private _eh2 = _unit addEventHandler ["HandleDamage", {
	params ["_unit"];
	systemChat "EH2";
	diag_log "EH2";
	_unit removeEventHandler ["HandleDamage",_thisEventHandler];
	// removeAllActions _unit;
	private _originalBody = _unit getVariable ["originalBodyRef", (_unit getVariable "owner")];
	_unit setVariable ["controlReturned", true];
	selectPlayer _originalBody;
	(units group player) joinsilent group player;
	group player selectLeader player;
	[localize "STR_control_unit_hint_header",localize "STR_control_unit_damage_control_return_ai"] call A3A_fnc_customHint;
	nil;
}];
selectPlayer _unit;

//otherwise unit will lost his identity
[_unit, _face, _speaker] remoteExecCall ["BIS_fnc_setIdentity", 0];

private _timeX = aiControlTime;
_unit addAction [(localize "STR_antistasi_actions_return_control_to_ai"),{
	params ["_unit"];
	private _originalBody = _unit getVariable ["originalBodyRef", (leader (group (_this select 0)))];
	_unit setVariable ["controlReturned", true];
	selectPlayer _originalBody;
}];
[_originalBody,"heal1"] call A3A_fnc_flagaction; 

[localize "STR_antistasi_actions_unconscious_action_possessed",0,0,3,0,0,4] spawn bis_fnc_dynamicText;

waitUntil {
	sleep 1; 
	[localize "STR_control_unit_hint_header", format [localize "STR_control_unit_time_to_return_to_original_body", _timeX]] call A3A_fnc_customHint; 
	_timeX = _timeX - 1; 

	_timeX == -1 || {!([_unit] call A3A_fnc_canFight) || {!(_originalBody getVariable ["incapacitated",false]) || {_unit getVariable ["controlReturned", false]}}}
};

removeAllActions _unit;
selectPlayer _originalBody;
(units group player) joinsilent group player;
group player selectLeader player;
player setVariable ["owner",player,true];
_unit setVariable ["owner",nil,true];
_unit setVariable ["controlReturned", nil];
_unit removeEventHandler ["HandleDamage",_eh2];
player removeEventHandler ["HandleDamage",_eh1];
_originalBody setVariable ["originalBody", nil];
_unit setVariable ["originalBodyRef", nil];

[localize "STR_control_unit_hint_header", localize "STR_control_unit_return_to_original_body"] call A3A_fnc_customHint;
playSound "A3AP_UiSuccess";

sleep 1;

if (player getVariable ["incapacitated",false]) exitWith {
	if (!isNil "respawnMenu") then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu]};
	respawnMenu = (findDisplay 46) displayAddEventHandler ["KeyDown", SCRT_fnc_common_unconsciousEventHandler];
};