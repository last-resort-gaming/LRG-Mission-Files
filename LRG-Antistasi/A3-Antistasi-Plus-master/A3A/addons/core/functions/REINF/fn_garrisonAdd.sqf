#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_unitType"];

private _hr = server getVariable "hr";

if (_hr < 1) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_no_hr", localize "STR_notifiers_fail_type"] call SCRT_fnc_ui_showDynamicTextMessage;
};

private _markerX = positionXGarr;
private _previousGarrison = garrison getVariable [_markerX,[]];

if (count _previousGarrison >= ([_markerX] call SCRT_fnc_common_getGarrisonLimit)) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_limit", localize "STR_notifiers_fail_type"] call SCRT_fnc_ui_showDynamicTextMessage;
};

private _resourcesFIA = server getVariable "resourcesFIA";
private _costs = server getVariable _unitType;

if (_costs > _resourcesFIA) exitWith {
	[localize "STR_garrison_garrison_header",  format [localize "STR_garrison_error_no_money", _costs, A3A_faction_civ get "currencySymbol"], localize "STR_notifiers_fail_type"] call SCRT_fnc_ui_showDynamicTextMessage;
};

if (_unitType == FactionGet(reb, "unitCrew") && _markerX in (watchpostsFIA + roadblocksFIA + aapostsFIA + atpostsFIA + hmgpostsFIA)) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_no_mortar", localize "STR_notifiers_fail_type"] call SCRT_fnc_ui_showDynamicTextMessage;
};

_positionX = getMarkerPos _markerX;

if (surfaceIsWater _positionX) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_still_updating", localize "STR_notifiers_fail_type"] call SCRT_fnc_ui_showDynamicTextMessage;
};

if ([_positionX] call A3A_fnc_enemyNearCheck) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_enemies_near", localize "STR_notifiers_fail_type"] call SCRT_fnc_ui_showDynamicTextMessage;
};

scopename "main";
if !(player call A3A_fnc_isMember) then {
	private _curSize = count (garrison getVariable _markerX);
	private _maxSize = call {
		if (_markerX in airportsX) exitWith { 30 };
		if (_markerX in milbases) exitWith { 25 };
		if (_markerX in outposts) exitWith { 20 };
		15;
	};
	if (_curSize >= _maxSize) then {
		[localize "STR_garrison_garrison_header", localize "STR_garrison_error_guest"] call A3A_fnc_customHint;
		breakout "main";
	};
};

[-1,-_costs] remoteExec ["A3A_fnc_resourcesFIA",2];

_countX = count (garrison getVariable [_markerX,[]]);
[_unitType,teamPlayer,_markerX,1] remoteExec ["A3A_fnc_garrisonUpdate",2];
waitUntil {(_countX < count (garrison getVariable [_markerX, []])) or (sidesX getVariable [_markerX,sideUnknown] != teamPlayer)};

if (sidesX getVariable [_markerX,sideUnknown] == teamPlayer) then {
	private _garrisonInfo = format [localize "STR_garrison_recruit_success", [_markerX] call A3A_fnc_garrisonInfo];
	[localize "STR_garrison_garrison_header", _garrisonInfo] call SCRT_fnc_ui_showDynamicTextMessage;

	if (spawner getVariable _markerX != 2) then {
		[_markerX,_unitType] remoteExec ["A3A_fnc_createSDKGarrisonsTemp",2];
	};
};
