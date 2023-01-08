#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()

params ["_thingX"];

if (!visibleMap) then {openMap true};
positionTel = [];

showCommandingMenu "";
onMapSingleClick "positionTel = _pos; true";

[localize "STR_garrison_garrison_header", localize "STR_garrison_select_zone"] call A3A_fnc_customHint;

waitUntil {sleep 0.5; (count positionTel > 0) or (not visiblemap)};
onMapSingleClick "";

if (!visibleMap) exitWith {};

private _positionTel = positionTel;
private _nearX = [markersX,_positionTel] call BIS_fnc_nearestPosition;

if !(_positionTel inArea _nearX) exitWith {
	[localize "STR_garrison_garrison_header", format [localize "STR_garrison_error_not_markerzone",FactionGet(reb,"name")]] call SCRT_fnc_misc_deniedHint;
};

if (!(sidesX getVariable [_nearX,sideUnknown] isEqualTo teamPlayer)) exitWith {
	[localize "STR_garrison_garrison_header", format [localize "STR_garrison_error_not_teamplayer" ,FactionGet(reb,"name")]] call SCRT_fnc_misc_deniedHint;
};

private _groupX = grpNull;
private _unitsX = objNull;

if ((_thingX select 0) isEqualType grpNull) then {
	_groupX = _thingX select 0;
	_unitsX = units _groupX;
} else {
	_unitsX = _thingX;
};


private _limit = [_nearX] call SCRT_fnc_common_getGarrisonLimit;
private _newGarrison = (count (units _groupX)) + (count (garrison getVariable [_nearX, []]));
if (_newGarrison > _limit) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_exceed_limit"] call SCRT_fnc_misc_deniedHint;
};

private _leave = false;
private _alreadyInGarrison = false;
{
	private _garrisondIn = _x getVariable "markerX";
	if !(isNil "_garrisondIn") then {_alreadyInGarrison = true};
} forEach _unitsX;
if _alreadyInGarrison exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_already_in_garrison"] call SCRT_fnc_misc_deniedHint;
};

if ((groupID _groupX in ["MineF", "Watch", "Post", "Road"]) or {(isPlayer(leader _groupX))}) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_no_specific_squads"] call SCRT_fnc_misc_deniedHint;
};

{
	if (isPlayer _x or !alive _x) exitWith {_leave = true};
} forEach _unitsX;
if (_leave) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_dead_units"] call SCRT_fnc_misc_deniedHint;
};

private _bannedTypes = FactionGet(civ, "unitMan") + FactionGet(civ, "unitPress") + FactionGet(civ, "unitWorker") + FactionGet(reb,"unitCrew"), FactionGet(reb,"unitUnarmed"), FactionGet(reb,"unitPetros");
{
	private _unitType = _x getVariable "unitType";
	if (_unitType in _bannedTypes) exitWith {_leave = true};
} forEach _unitsX;
if (_leave) exitWith {
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_no_specific_units"] call SCRT_fnc_misc_deniedHint;
};

if (isNull _groupX) then {
	_groupX = createGroup teamPlayer;
	_unitsX joinSilent _groupX;
	[localize "STR_garrison_garrison_header", localize "STR_garrison_error_add_to_garrison"] call A3A_fnc_customHint;
} else {
	[localize "STR_garrison_garrison_header", format [localize "STR_garrison_error_add_to_garrison_hcsquads", groupID _groupX]] call A3A_fnc_customHint;
	theBoss hcRemoveGroup _groupX;
};

// Send types, because the units may be deleted before the remoteExec hits
private _unitTypes = _unitsX apply { _x getVariable "unitType" };
[_unitTypes,teamPlayer,_nearX,0] remoteExec ["A3A_fnc_garrisonUpdate",2];
private _noBorrar = false;

if (spawner getVariable _nearX != 2) then
{
	private _targPos = getMarkerPos _nearX;
	private _wp = _groupX addWaypoint [(getMarkerPos _nearX), 0];
	_wp setWaypointType "MOVE";
	_groupX setCurrentWaypoint _wp;
	{
	_x setVariable ["markerX",_nearX,true];
	_x setVariable ["spawner",nil,true];
	_x addEventHandler ["killed",
		{
		_victim = _this select 0;
		_markerX = _victim getVariable "markerX";
		if (!isNil "_markerX") then
			{
			if (sidesX getVariable [_markerX,sideUnknown] == teamPlayer) then
				{
				[_victim getVariable "unitType",teamPlayer,_markerX,-1] remoteExec ["A3A_fnc_garrisonUpdate",2];
				_victim setVariable [_markerX,nil,true];
				};
			};
		}];
	} forEach _unitsX;

	// trigger actual garrison join when close to target
	[_nearX, _groupX] spawn {
		params ["_marker", "_group"];
		waitUntil {
			sleep 5;
			isNull leader _group or { leader _group distance getMarkerPos _marker < 20 }
		};
		sleep 10;			// give units some time to get onto marker
		if !(isNull leader _group) then { [_marker] remoteExec ["A3A_fnc_updateRebelStatics", 2] };
	};

	waitUntil {sleep 1; (spawner getVariable _nearX == 2 or !(sidesX getVariable [_nearX,sideUnknown] == teamPlayer))};
	if (!(sidesX getVariable [_nearX,sideUnknown] == teamPlayer)) exitWith {_noBorrar = true};
};

if (!_noBorrar) then { 
		{
			if (alive _x) then {
				deleteVehicle _x
			};
		} forEach _unitsX;
	deleteGroup _groupX;
} else {
	{
		if (alive _x) then {
			_x setVariable ["markerX",nil,true];
			_x setVariable ["spawner",true,true];
			_x removeAllEventHandlers "killed";
			_x addEventHandler ["killed", {
				params ["_victim", "_killer"];
				[_victim] remoteExec ["A3A_fnc_postmortem",2];
				if (isPlayer _killer and {side _killer == teamPlayer}) exitWith {
					_victim setVariable ["spawner",nil,true];
				};
			
				if (side _killer == Occupants) then {
					_nul = [0.25,0,getPos _victim] remoteExec ["A3A_fnc_citySupportChange",2];
					[Occupants, -1, 30] remoteExec ["A3A_fnc_addAggression",2];
				} else {
					if (side _killer == Invaders) then {[Invaders, -1, 30] remoteExec ["A3A_fnc_addAggression",2]};
				};
				_victim setVariable ["spawner",nil,true];
			}];
		};
	} forEach _unitsX;
	theBoss hcSetGroup [_groupX];
	[localize "STR_garrison_garrison_header", format [localize "STR_garrison_error_zone_lost",groupID _groupX]] call A3A_fnc_customHint;
};
