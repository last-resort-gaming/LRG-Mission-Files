params ["_unit", "_injurer"];

private _bleedOut = time + 450;
private _isPlayer = false;
private _playersX = false;
private _inPlayerGroup = false;
_unit setBleedingremaining 300;

if (isPlayer _unit) then {
	_isPlayer = true;

	_unit spawn {
		sleep 5;
		_this allowDamage true;
	};
	closeDialog 0;
	if (!isNil "respawnMenu") then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu]};
	respawnMenu = (findDisplay 46) displayAddEventHandler ["KeyDown", SCRT_fnc_common_unconsciousEventHandler];
	if (_injurer != Invaders) then {
		[_unit,true] remoteExec ["setCaptive",0,_unit];
		_unit setCaptive true
	};

	openMap false;

	{
		if ((!isPlayer _x) and (vehicle _x != _x) and (_x distance _unit < 50)) then {unassignVehicle _x; [_x] orderGetIn false}
	} forEach units group _unit;
}
else {
	if ({isPlayer _x} count units  group _unit > 0) then {_inPlayerGroup = true};
	_unit stop true;
	if (_inPlayerGroup) then {
		[_unit,"heal1"] remoteExec ["A3A_fnc_flagaction",0,_unit];

		if (_injurer != Invaders) then {
			[_unit,true] remoteExec ["setCaptive",0,_unit];
			_unit setCaptive true
		};
	}
	else {
		if ({if ((isPlayer _x) and (_x distance _unit < distanceSPWN2)) exitWith {1}} count allUnits != 0) then {
				_playersX = true;
				[_unit,"heal"] remoteExec ["A3A_fnc_flagaction",0,_unit];
			if (_unit != petros) then {
				if (_injurer != Invaders) then {
					[_unit,true] remoteExec ["setCaptive",0,_unit];
					_unit setCaptive true
				}
			};
		};
	};
};

_unit setFatigue 1;
sleep 2;
if (_isPlayer) then {
	group _unit setCombatMode "YELLOW";
	[_unit,"heal1"] remoteExec ["A3A_fnc_flagaction",0,_unit];

	if (isDiscordRichPresenceActive) then {
		private _possibleMarkers = outposts + airportsX + resourcesX + factories + seaports + milbases + ["NATO_carrier", "CSAT_carrier"];
		private _nearestMarker = [_possibleMarkers, player] call BIS_fnc_nearestPosition;
		private _locationName = [_nearestMarker] call A3A_fnc_localizar;

		if(player distance2D (getMarkerPos _nearestMarker) < 300) then {
			[["UpdateState", format ["Lies unconscious at the %1", _locationName]]] call SCRT_fnc_misc_updateRichPresence;
		} else {
			[["UpdateState", "Lies unconscious in the middle of nowhere"]] call SCRT_fnc_misc_updateRichPresence;
		};
	};
};

//declaring out of scope helps with perf
private _textX = "";
private _consciousUnits = [];
private _helped = objNull;
private _originalBody = objNull;

while {(time < _bleedOut) && (_unit getVariable ["incapacitated",false]) && (alive _unit) && (!(_unit getVariable ["respawning",false]))} do {
	if (random 10 < 1) then {playSound3D [(selectRandom injuredSounds),_unit,false, getPosASL _unit, 1, 1, 50];};
	if (_isPlayer) then {
		_helped = _unit getVariable ["helped",objNull];

		//selectPlayer switches unit
		_originalBody = _unit getVariable ["originalBody", objNull];
		if (_originalBody isNotEqualTo objNull) then {
			_helped = _originalBody;
		};

		_consciousUnits = [] call SCRT_fnc_common_getNearFriendlyAiUnits;
		
		if (isNull _helped) then {
			private _helpX = [_unit] call A3A_fnc_askHelp;
			
			if (isNull _helpX) then {
				_textX = [
					localize "STR_antistasi_actions_unconscious_action_prompt0",
					localize "STR_antistasi_actions_unconscious_action_prompt0_possess"
				] select (count _consciousUnits > 0);
			}
			else {
				if (_helpX != _unit) then {
					_textX = [
						format [localize "STR_antistasi_actions_unconscious_action_prompt1", name _helpX],
						format [localize "STR_antistasi_actions_unconscious_action_prompt1_possess", name _helpX]
					] select (count _consciousUnits > 0);
				} else {
					_textX = [
						localize "STR_antistasi_actions_unconscious_action_prompt2",
						localize "STR_antistasi_actions_unconscious_action_prompt2_possess"
					] select (count _consciousUnits > 0);
				};
			};
		}
		else {
			if (!isNil "_helpX") then {
				if (!isNull _helpX) then {
						_textX = [
							format [localize "STR_antistasi_actions_unconscious_action_prompt1", name _helpX],
							format [localize "STR_antistasi_actions_unconscious_action_prompt1_possess", name _helpX]
						] select (count _consciousUnits > 0);
					} else {
						_textX = [
							localize "STR_antistasi_actions_unconscious_action_prompt2",
							localize "STR_antistasi_actions_unconscious_action_prompt2_possess"
						] select (count _consciousUnits > 0);
					};
			}
			else {
				_textX = [
					localize "STR_antistasi_actions_unconscious_action_prompt2",
					localize "STR_antistasi_actions_unconscious_action_prompt2_possess"
				] select (count _consciousUnits > 0);
			};
		};

		if !(isNull _originalBody) then {
			_textX = localize "STR_antistasi_actions_unconscious_action_possessed";
		};

		private _layer = ["A3A_infoCenter"] call BIS_fnc_rscLayer;
		[_textX,0,0,3,0,0,_layer] spawn bis_fnc_dynamicText;
		if (_unit getVariable "respawning") exitWith {};
	}
	else {
		if (_inPlayerGroup) then {
			if (autoHeal) then {
				private _helped = _unit getVariable ["helped",objNull];
				if (isNull _helped) then {[_unit] call A3A_fnc_askHelp;};
			};
		}
		else {
			private _helped = _unit getVariable ["helped",objNull];
			if (isNull _helped) then {[_unit] call A3A_fnc_askHelp;};
		};
	};
	sleep 1;
	if !(isNull attachedTo _unit) then {_bleedOut = _bleedOut + 4};
};

if (_isPlayer) then {
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu];
	[_unit,"remove"] remoteExec ["A3A_fnc_flagaction",0,_unit];
}
else {
	_unit stop false;
	if (_inPlayerGroup or _playersX) then {
		[_unit,"remove"] remoteExec ["A3A_fnc_flagaction",0,_unit];
	};
};

if (captive _unit) then {[_unit,false] remoteExec ["setCaptive",0,_unit]; _unit setCaptive false};
_unit setVariable ["overallDamage",damage _unit];
if (_isPlayer and (_unit getVariable ["respawn",false])) exitWith {};

if (time > _bleedOut) exitWith {
	if (_isPlayer) then {
		_unit call A3A_fnc_respawn
	}
	else {
		_unit setDamage 1;
	};
};

if (alive _unit) then {
	_unit setUnconscious false;
	_unit setBleedingRemaining 0;
	_unit switchMove "unconsciousoutprone";

	if (isPlayer _unit) then {
		[] call SCRT_fnc_misc_updateRichPresence;
	};
};