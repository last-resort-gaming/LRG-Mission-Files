private ["_unit","_grupo","_grupos","_isLeader","_dummyGroup","_bleedOut","_suicide","_saveVolume","_ayuda","_ayudado","_texto","_isPlayer","_camTarget","_saveVolumeVoice","_inPlayerGroup"];
_unit = _this select 0;

_bleedOut = time + 300;//300
_isPlayer = false;
_jugadores = true;
_inPlayerGroup = false;
_unit setBleedingremaining 300;
_injurer = _this select 1;

if (isPlayer _unit) then
	{
	_isPlayer = true;
	_unit spawn
		{
		sleep 5;
		_this allowDamage true;
		};
	closeDialog 0;
	if (!isNil "respawnMenu") then {(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu]};
	respawnMenu = (findDisplay 46) displayAddEventHandler ["KeyDown",
		{
		_handled = false;
		if (_this select 1 == 19) then
			{
			if (player getVariable ["INCAPACITATED",false]) then
				{
				(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu];
				[player] spawn A3A_fnc_respawn;
				};
			};
		if ((_this select 1 == 57) and !(_this select 3)) then
			{
			if (player getVariable ["INCAPACITATED",false]) then
				{
				if (!isMultiplayer and !visibleMap) then
					{
					_ayudado = player getVariable ["ayudado",objNull];
					if !(isNull _ayudado) then
						{
						if ([_ayudado] call A3A_fnc_canFight) then
							{
							if (_ayudado distance player > 2) then
								{
								_ayudado setPosASL (getPosASL player)
								}
							else
								{
								if !(isNull (attachedTo _ayudado)) then {deleteVehicle (attachedTo _ayudado)};
								};
							};
						};
					};
				};
			};
		_handled;
		}];
	//port to Antistasi
	if (isMultiplayer) then
		{
		[] remoteExec ["A3A_fnc_draw3D",allPlayers select {side group _x == side group _unit}];
		};
	if (_injurer != muyMalos) then {[_unit,true] remoteExec ["setCaptive",0,_unit]; _unit setCaptive true};
	openMap false;
	{
	if ((!isPlayer _x) and (vehicle _x != _x) and (_x distance _unit < 50)) then {unassignVehicle _x; [_x] orderGetIn false}
	} forEach units group _unit;
	}
else
	{
	removeSwitchableUnit _unit;
	if ({isPlayer _x} count units  group _unit > 0) then {_inPlayerGroup = true};
	_unit stop true;
	if (_inPlayerGroup) then
		{
		[_unit,"heal1"] remoteExec ["A3A_fnc_flagaction",0,_unit];
		if (_injurer != muyMalos) then {[_unit,true] remoteExec ["setCaptive",0,_unit]; _unit setCaptive true};
		remoteExec ["A3A_fnc_draw3D",0,_unit];
		}
	else
		{
		_jugadores = true;
		[_unit,"heal"] remoteExec ["A3A_fnc_flagaction",0,_unit];
		};
	};

_unit setFatigue 1;
sleep 2;
if (_isPlayer) then
	{
	if (hayTFAR) then
		{
		_saveVolume = player getVariable ["tf_globalVolume", 1.0];
		player setVariable ["tf_unable_to_use_radio", true, true];
		player setVariable ["tf_globalVolume", 0];
		_saveVolumeVoice = player getVariable ["tf_voiceVolume", 1.0];
		if (random 100 < 20) then {player setVariable ["tf_voiceVolume", 0.0, true]};
		};
	group _unit setCombatMode "YELLOW";
	if (isMultiplayer) then
		{
		[_unit,"heal1"] remoteExec ["A3A_fnc_flagaction",0,_unit];
		//[_unit,"carry"] remoteExec ["A3A_fnc_flagaction",0,_unit];
		};
	};


while {(time < _bleedOut) and (_unit getVariable ["INCAPACITATED",false]) and (alive _unit) and (!(_unit getVariable ["respawning",false]))} do
	{
	if (random 10 < 1) then {playSound3D [(selectRandom injuredSounds),_unit,false, getPosASL _unit, 1, 1, 50];};
	if (_isPlayer) then
		{
		_ayudado = _unit getVariable ["ayudado",objNull];
		if (isNull _ayudado) then
			{
			_ayuda = [_unit] call A3A_fnc_pedirAyuda;
			if (isNull _ayuda) then
				{
				if ([_unit] call A3A_fnc_fatalWound) then
					{
					if ((units group _unit) findIf {([_x] call A3A_fnc_isMedic) and ([_x] call A3A_fnc_canFight)} == -1) then
						{
						_texto = format ["<t size='0.6'>There is no AI near to help you.<t size='0.5'><br/>Hit R to Respawn"];
						}
					else
						{
						_texto = format ["<t size='0.6'>Wait until you get assistance or<t size='0.5'><br/>Hit R to Respawn"];
						};
					}
				else
					{
					if ((units group _unit) findIf {([_x] call A3A_fnc_canFight) and ("FirstAidKit" in (items _x))} == -1) then
						{
						_texto = format ["<t size='0.6'>There is no AI near to help you.<t size='0.5'><br/>Hit R to Respawn"];
						}
					else
						{
						_texto = format ["<t size='0.6'>Wait until you get assistance or<t size='0.5'><br/>Hit R to Respawn"];
						};
					};
				}
			else
				{
				if (_ayuda != _unit) then {_texto = format ["<t size='0.6'>%1 is on the way to help you.<t size='0.5'><br/>Hit R to Respawn<br/>Hit SPACE to teleport %1 to your position or stop being carried",name _ayuda]} else {_texto = "<t size='0.6'>Wait until you get assistance or<t size='0.5'><br/>Hit R to Respawn"};
				};
			}
		else
			{
			if (!isNil "_ayuda") then
				{
				if (!isNull _ayuda) then
					{
					_texto = if (isMultiplayer) then {format ["<t size='0.6'>%1 is on the way to help you.<t size='0.5'><br/>Hit R to Respawn",name _ayuda]} else {format ["<t size='0.6'>%1 is on the way to help you.<t size='0.5'><br/>Hit R to Respawn<br/>Hit SPACE to teleport %1 to your position or stop being carried",name _ayuda]};
					}
				else
					{
					_texto = "<t size='0.6'>Wait until you get assistance or<t size='0.5'><br/>Hit R to Respawn"
					};
				}
			else
				{
				_texto = "<t size='0.6'>Wait until you get assistance or<t size='0.5'><br/>Hit R to Respawn";
				};
			};
		[_texto,0,0,3,0,0,4] spawn bis_fnc_dynamicText;
		if (_unit getVariable "respawning") exitWith {};
		}
	else
		{
		if (_inPlayerGroup) then
			{
			if (autoheal) then
				{
				_ayudado = _unit getVariable ["ayudado",objNull];
				if (isNull _ayudado) then {[_unit] call A3A_fnc_pedirAyuda;};
				};
			}
		else
			{
			_ayudado = _unit getVariable ["ayudado",objNull];
			if (isNull _ayudado) then {[_unit] call A3A_fnc_pedirAyuda;};
			};
		};
	sleep 3;
	if !(isNull attachedTo _unit) then {_bleedOut = _bleedOut + 4};
	};

if (_isPlayer) then
	{
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", respawnMenu];
	if (hayTFAR) then
		{
		player setVariable ["tf_unable_to_use_radio", false, true];
		player setVariable ["tf_globalVolume", _saveVolume];
		player setVariable ["tf_voiceVolume", _saveVolumeVoice, true];
		};
	if (isMultiplayer) then {[_unit,"remove"] remoteExec ["A3A_fnc_flagaction",0,_unit]};
	}
else
	{
	_unit stop false;
	if (_inPlayerGroup or _jugadores) then
		{
		[_unit,"remove"] remoteExec ["A3A_fnc_flagaction",0,_unit];
		};
	};

if (captive _unit) then {[_unit,false] remoteExec ["setCaptive",0,_unit]; _unit setCaptive false};
_unit setVariable ["overallDamage",damage _unit];
if (_isPlayer and (_unit getVariable ["respawn",false])) exitWith {};

if (time > _bleedOut) exitWith
	{
	if (_isPlayer) then
		{
		[_unit] call A3A_fnc_respawn
		}
	else
		{
		_unit setDamage 1;
		};
	};
if (alive _unit) then
	{
	if !(_isPlayer) then {addSwitchableUnit _unit};
	_unit setUnconscious false;
	_unit playMoveNow "AmovPpneMstpSnonWnonDnon_healed";
	_unit setBleedingremaining 0;
	};
