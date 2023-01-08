private ["_unit","_muerto","_killer","_skill","_nombre","_tipo"];

_unit = _this select 0;

[_unit] call A3A_fnc_initRevive;
_unit setVariable ["spawner",true,true];
if (_unit == leader _unit) then {group _unit setVariable ["origen",respawnBuenos]};
_unit allowFleeing 0;
_tipo = typeOf _unit;
_skill = skillFIA * 0.05;
if (!activeGREF) then {if (not((uniform _unit) in uniformsSDK)) then {[_unit] call A3A_fnc_reDress}};
if ((!isMultiplayer) and (leader _unit == theBoss)) then {_skill = _skill + 0.1};
_unit setSkill _skill;
if (_tipo in SDKSniper) then
	{
	if (count unlockedSN > 0) then
		{
		_unit setSkill ["aimingSpeed",0];
		_magazines = getArray (configFile / "CfgWeapons" / (primaryWeapon _unit) / "magazines");
		{_unit removeMagazines _x} forEach _magazines;
		_unit removeWeaponGlobal (primaryWeapon _unit);
		[_unit, selectRandom unlockedSN, 12, 0] call A3A_fnc_addWeapon;
		if (count unlockedOptics > 0) then
			{
			_compatibles = [primaryWeapon _unit] call BIS_fnc_compatibleItems;
			_posibles = [];
			{
			_optic = _x;
			{if (_optic == _x) exitWith {_posibles pushBack _x}} forEach _compatibles;
			} forEach unlockedOptics;
			if (count _posibles > 0) then {_unit addPrimaryWeaponItem (_posibles select 0)};
			};
		}
	else
		{
		[_unit,unlockedRifles,true] call A3A_fnc_randomRifle;
		};
	}
else
	{
	if (_unit skill "aimingAccuracy" > 0.35) then {_unit setSkill ["aimingAccuracy",0.35]};
	if (random 40 < skillFIA) then
		{
		if (getNumber (configfile >> "CfgWeapons" >> headgear _unit >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor") < 2) then {removeHeadgear _unit;_unit addHeadgear (selectRandom cascos)};
		};
	if ((_tipo in SDKMil) or (_tipo == staticCrewBuenos)) then
		{
		if (!hayIFA or (_tipo in SDKMil)) then {[_unit,unlockedRifles,false] call A3A_fnc_randomRifle};
		if ((loadAbs _unit < 340) and (_tipo in SDKMil)) then
			{
			if ((random 20 < skillFIA) and (count unlockedAA > 0)) then
				{
				_unit addbackpack (unlockedBackpacks select 0);
				[_unit, selectRandom unlockedAA, 2, 0] call A3A_fnc_addWeapon;
				//removeBackpack _unit;
				};
			};
		}
	else
		{
		if (_tipo in SDKMG) then
			{
			if (count unlockedMG > 0) then
				{
				[_unit,unlockedMG,true] call A3A_fnc_randomRifle;
				}
			else
				{
				[_unit,unlockedRifles,true] call A3A_fnc_randomRifle;
				};
			}
		else
			{
			if (_tipo in SDKGL) then
				{
				if (count unlockedGL > 0) then
					{
					[_unit,unlockedGL,true] call A3A_fnc_randomRifle;
					}
				else
					{
					[_unit,unlockedRifles,true] call A3A_fnc_randomRifle;
					};
				}
			else
				{
				if (_tipo != SDKUnarmed) then {[_unit,unlockedRifles,false] call A3A_fnc_randomRifle};
				if (_tipo in SDKExp) then
					{
					_unit setUnitTrait ["explosiveSpecialist",true];
					}
				else
					{
					if (_tipo in SDKMedic) then
						{
						_unit setUnitTrait ["medic",true];
						if (hayIFA) then
							{
							_unit addBackpack "B_LIB_GER_MedicBackpack_Empty";
							_unit addItemToBackpack "Medikit";
							};
						_numKits = {_x == "FirstAidKit"} count (items _unit);
						if (_numKits < 6) then
							{
							for "_i" from _numKits to 6 do {_unit addItemToBackpack "FirstAidKit"};
							};
						}
					else
						{
						if (_tipo in SDKATman) then
							{
							if !(unlockedAT isEqualTo []) then
								{
								_rlauncher = selectRandom unlockedAT;
								if (_rlauncher != secondaryWeapon _unit) then
									{
									_magazines = getArray (configFile / "CfgWeapons" / (secondaryWeapon _unit) / "magazines");
									{_unit removeMagazines _x} forEach _magazines;
									_unit removeWeaponGlobal (secondaryWeapon _unit);
									if (backpack _unit == "") then
										{
										_best = 0;
										_backpack = "";
										{
										if ((getNumber (configFile >> "CfgVehicles" >> _x >> "maximumload")) > _best) then
											{
											_best = getNumber (configFile >> "CfgVehicles" >> _x >> "maximumload");
											_backpack = _x;
											};
										} forEach (unlockedBackpacks - ["B_LIB_US_M2Flamethrower"]);
										_unit addBackpack _backpack;
										};
									[_unit, _rlauncher, 4, 0] call A3A_fnc_addWeapon;
									};
								}
							else
								{
								if (hayIFA) then
									{
									[_unit, "LIB_PTRD", 10, 0] call A3A_fnc_addWeapon;
									};
								};
							}
						else
							{
							if (_tipo in SDKSL) then
								{
								_unit setskill ["courage",_skill + 0.2];
								_unit setskill ["commanding",_skill + 0.2];
								};
							};
						};
					};
				};
			};
		};
	};

_unit setUnitTrait ["camouflageCoef",0.8];
_unit setUnitTrait ["audibleCoef",0.8];

_unit selectWeapon (primaryWeapon _unit);

if (!haveRadio) then
	{
	if ((_unit != leader _unit) and (_tipo != staticCrewBuenos)) then {_unit unlinkItem "ItemRadio"};
	};

if (({if (_x in humo) exitWith {1}} count unlockedMagazines > 0) or ({if (_x in humo) exitWith {1}} count unlockedWeapons > 0)) then {_unit addMagazines [selectRandom humo,2]};
if !(hayIFA) then
	{
	if ((sunOrMoon < 1) and (_tipo != SDKUnarmed)) then
		{
		if (haveNV) then
			{
			if (hmd _unit == "") then {_unit linkItem (selectRandom NVGoggles)};
			_pointers = pointers arrayIntersect unlockedItems;
			if !(_pointers isEqualTo []) then
				{
				_pointers = _pointers arrayIntersect ((primaryWeapon _unit) call BIS_fnc_compatibleItems);
				if !(_pointers isEqualTo []) then
					{
					_pointer = selectRandom _pointers;
					_unit addPrimaryWeaponItem _pointer;
			        _unit assignItem _pointer;
			        _unit enableIRLasers true;
					};
				};
			}
		else
			{
			_hmd = hmd _unit;
			if (_hmd != "") then
				{
				_unit unassignItem _hmd;
				_unit removeItem _hmd;
				};
			_flashlights = flashlights arrayIntersect unlockedItems;
			if !(_flashlights isEqualTo []) then
				{
				_flashlights = _flashlights arrayIntersect ((primaryWeapon _unit) call BIS_fnc_compatibleItems);
				if !(_flashlights isEqualTo []) then
					{
					_flashlight = selectRandom _flashlights;
					_unit addPrimaryWeaponItem _flashlight;
				    _unit assignItem _flashlight;
				    _unit enableGunLights _flashlight;
					};
				};
		    };
		}
	else
		{
		_hmd = hmd _unit;
		if (_hmd != "") then
			{
			_unit unassignItem _hmd;
			_unit removeItem _hmd;
			};
		};
	};

if (player == leader _unit) then
	{
	_unit setVariable ["owner",player];
	_EHkilledIdx = _unit addEventHandler ["killed", {
		_muerto = _this select 0;
		[_muerto] spawn A3A_fnc_postmortem;
		_killer = _this select 1;
		if !(hayIFA) then {arrayids pushBackUnique (name _muerto)};
		if (side _killer == malos) then
			{
			_nul = [0.25,0,getPos _muerto] remoteExec ["A3A_fnc_citySupportChange",2];
			[-0.25,0] remoteExec ["A3A_fnc_prestige",2];
			}
		else
			{
			if (side _killer == muyMalos) then
				{
				[0,-0.25] remoteExec ["A3A_fnc_prestige",2]
				}
			else
				{
				if (isPlayer _killer) then
					{
					_killer addRating 1000;
					};
				};
			};
		_muerto setVariable ["spawner",nil,true];
		}];
	if ((typeOf _unit != SDKUnarmed) and !hayIFA) then
		{
		_idUnit = selectRandom arrayids;
		arrayids = arrayids - [_idunit];
		_unit setIdentity _idUnit;
		};
	if (captive player) then {[_unit] spawn A3A_fnc_undercoverAI};

	_unit setVariable ["rearming",false];
	if ((!haveRadio) and (!hayTFAR) and (!hayACRE) and !(hayIFA)) then
		{
		while {alive _unit} do
			{
			sleep 10;
			if ("ItemRadio" in assignedItems _unit) exitWith {_unit groupChat format ["This is %1, radiocheck OK",name _unit]};
			if (unitReady _unit) then
				{
				if ((alive _unit) and (_unit distance (getMarkerPos respawnBuenos) > 50) and (_unit distance leader group _unit > 500) and ((vehicle _unit == _unit) or ((typeOf (vehicle _unit)) in arrayCivVeh))) then
					{
					hint format ["%1 lost communication, he will come back with you if possible", name _unit];
					[_unit] join rezagados;
					if ((vehicle _unit isKindOf "StaticWeapon") or (isNull (driver (vehicle _unit)))) then {unassignVehicle _unit; [_unit] orderGetIn false};
					_unit doMove position player;
					_tiempo = time + 900;
					waitUntil {sleep 1;(!alive _unit) or (_unit distance player < 500) or (time > _tiempo)};
					if ((_unit distance player >= 500) and (alive _unit)) then {_unit setPos (getMarkerPos respawnBuenos)};
					[_unit] join group player;
					};
				};
			};
		};
	}
else
	{
	_EHkilledIdx = _unit addEventHandler ["killed", {
		_muerto = _this select 0;
		_killer = _this select 1;
		[_muerto] remoteExec ["A3A_fnc_postmortem",2];
		if ((isPlayer _killer) and (side _killer == buenos)) then
			{
			if (!isMultiPlayer) then
				{
				_nul = [0,20] remoteExec ["A3A_fnc_resourcesFIA",2];
				_killer addRating 1000;
				};
			}
		else
			{
			if (side _killer == malos) then
				{
				_nul = [0.25,0,getPos _muerto] remoteExec ["A3A_fnc_citySupportChange",2];
				[-0.25,0] remoteExec ["A3A_fnc_prestige",2];
				}
			else
				{
				if (side _killer == muyMalos) then
					{
					[0,-0.25] remoteExec ["A3A_fnc_prestige",2]
					}
				else
					{
					if (isPlayer _killer) then
						{
						_killer addRating 1000;
						};
					};
				};
			};
		_muerto setVariable ["spawner",nil,true];
		}];
	};


