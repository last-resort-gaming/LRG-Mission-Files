if (!isServer) exitWith {};

params ["_unit", "_pos", "_dir", "_pylonLoadout", "_class", "_side"];

_newVeh = _class createVehicle _pos;
_newVeh setDir _dir;
_newVeh setPos _pos;

// Reload the same pylons as before
if (allTurrets _newVeh isEqualTo []) then {
    {
        _newVeh setPylonLoadout [_forEachIndex + 1, _x, true];
    } forEach _pylonLoadout;
} else {
    {
        _newVeh setPylonLoadout [_forEachIndex + 1, _x, true, [-1]];
    } forEach _pylonLoadout;
};

if (_side == civilian) then {
    _newVeh setVariable ["LRG_Equipment_Select", 3, true];
    [_newVeh, "MERT"] call LR_fnc_MedicalSupplies;
};

[_newVeh] call ace_zeus_fnc_addObjectToCurator;

[_newVeh, _side] call LR_FN_fnc_initHelicopter;

// cleanup
deleteVehicle _unit;