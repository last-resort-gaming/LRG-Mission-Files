if (not canSuspend) exitWith {_this spawn LR_Aph_fnc_applyMasks;};

_mask = ["G_mas_ukl_gasmask", "G_mas_nor_gasmask"] select (_this select 0);
_unit = _this select 1;

sleep 5;

if (not (local _unit)) exitWith {};
removeGoggles _unit;
_unit addGoggles _mask;