private _unit = _this;

_result = "Normal";

private _var = _unit getVariable ["typeOfSoldier",""];

if ((_var isEqualTo "") or (_var isEqualTo "ATMan") or (_var isEqualTo "AAMan") or (_var isEqualTo "Engineer")) then
	{
	if ([_unit] call A3A_fnc_isMedic) then
		{
		_result = "Medic";
		}
	else
		{
		if ({(_x call BIS_fnc_itemType) select 0 == "Mine"} count (magazines _unit) > 0) then
			{
			_result = "Engineer";
			}
		else
			{
			if (secondaryWeapon _unit != "") then
				{
				private _arma = [secondaryWeapon _unit] call BIS_fnc_baseWeapon;
				private _typeOfMags = (getArray (configFile / "CfgWeapons" / _arma / "magazines")) select 0;
				private _hayMuni = false;
				{
				if ((_x select 0) == _typeOfMags) exitWith {_hayMuni = true}
				} forEach magazinesAmmoFull _unit;
				if (_hayMuni) then
					{
					if ((_arma call BIS_fnc_itemType) select 1 == "RocketLauncher") then
						{
						_result = "ATMan";
						}
					else
						{
						private _ammo = gettext (configFile >> "CfgMagazines" >> _typeOfMags >> "ammo");
						if ((getNumber (configfile >> "CfgAmmo" >> _ammo >> "airLock")) != 2) then {_result = "ATMan"} else {_result = "AAMan"};
						};
					}
				else
					{
					if (hayIFA) then
						{
						switch (secondaryWeapon _unit) do
							{
							case soporteStaticSDKB2: {_result = "StaticBase"};
							case MortStaticSDKB: {_result = "StaticMortar"};
							case soporteStaticSDKB3: {_result = "StaticBase"};
							case soporteStaticNATOB2: {_result = "StaticBase"};
							case MortStaticNATOB: {_result = "StaticMortar"};
							case soporteStaticNATOB3: {_result = "StaticBase"};
							case MortStaticCSATB: {_result = "StaticMortar"};
							case soporteStaticCSATB3: {_result = "StaticBase"};
							};
						};
					};
				}
			else
				{
				if (hayIFA and {primaryWeapon _unit in [MGStaticSDKB,MGStaticNATOB]}) then
					{
					_result = "StaticGunner";
					}
				else
					{
					_arma = [primaryWeapon _unit] call BIS_fnc_baseWeapon;
					if (_arma in mguns) then
						{
						_result = "MGMan"
						}
					else
						{
						if (_arma in srifles) then
							{
							_result = "Sniper";
							}
						else
							{
							if (backpack _unit != "") then
								{
								_backpack = backpack _unit;
								if (isClass (configFile >> "cfgVehicles" >> _backpack >> "assembleInfo")) then
									{
									_weapon = (gettext (configFile >> "cfgVehicles" >> _backpack >> "assembleInfo" >> "assembleTo"));
									if (_weapon != "") then
										{
										_result = if (_weapon isKindOf "StaticMortar") then {"StaticMortar"} else {"StaticGunner"};
										}
									else
										{
										_result = "StaticBase";
										};
									};
								}
							else
								{
								if (vehicle _unit isKindOf "StaticWeapon") then
									{
									_weapon = vehicle _unit;
									if (_weapon isKindOf "StaticMortar") then
										{
										_result = "StaticMortar";
										}
									else
										{
										_result = "StaticGunner";
										};
									};
								};
							};
						};
					};
				};
			};
		};
	_unit setVariable ["typeOfSoldier",_result];
	}
else
	{
	_result = _var;
	};
_result