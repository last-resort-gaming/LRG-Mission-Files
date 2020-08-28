[
    "StartGrenadeArena",
    "Start Grenade Arena",
    "",
    {remoteExec ["LR_AL_fnc_tpGrenades", 2];},
    {true}
] call LR_fnc_AddCreatorAction;

[
    "OpenSpectator",
    "Open Spectator",
    "",
    {[true, false, true] call ace_spectator_fnc_setSpectator;},
    {true}
] call LR_fnc_AddCreatorAction;

if (not isServer) exitWith {};

_id = ["ace_unconscious", {
    if !(_this select 1) exitWith {};
    _msg = format ["%1 went unconscious", name (_this select 0)];

    {
        if !(_x getUnitTrait "Mission Maker") exitWith {};
        [_msg] remoteExec ["systemChat", _x];
    } forEach allPlayers;
}] call CBA_fnc_addEventHandler;