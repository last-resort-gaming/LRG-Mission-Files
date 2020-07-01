if (!isServer) exitWith {};

params ["_unit", "_pos", "_pylonLoadout", "_class", "_side"];

_newVeh = _class createVehicle _pos;

// Reload the same pylons as before
if (allTurrets _newVeh isEqualTo []) then {
    {
        _newVeh setPylonLoadout [_forEachIndex + 1, _x, true];
    } forEach _pylonLoadout;
} else {
    {
        _newVeh setPylonLoadout [_forEachIndex + 1, _x, true, [0]];
    } forEach _pylonLoadout;
};

[_newVeh, _side] call LR_FN_fnc_initHelicopter;