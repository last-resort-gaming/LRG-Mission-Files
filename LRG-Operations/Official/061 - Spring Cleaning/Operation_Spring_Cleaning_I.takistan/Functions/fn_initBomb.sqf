params ["_object"];

if (isNil "LRG_SC_BombDefused") then {
	LRG_SC_BombDefused = false;
};

if !(hasInterface) exitWith {};

_object setVariable ["ACE_Explosives_Explosive", _object, false];

[
    _object,
    "DefuseBomb",
    "Defuse Bomb",
    "",
    "[_player, _target] call ACE_Explosives_fnc_canDefuse",
    "(not (_player getVariable [""ACE_isUnconscious"", false])) && (not LRG_SC_BombDefused)",
    {hint "Defusing Bomb!";},
    {hint "Defusing Bomb!";},
    {["Bomb Defused!"] remoteExec ["hint", 0];LRG_SC_BombDefused = true; publicVariable "LRG_SC_BombDefused";},
    {hint "Bomb was not defused!";},
    [],
    30,
    true,
    "Defusing Bomb...",
    false
] call LR_fnc_AddHoldAction;

[
    "DetonateBomb",
    "Detonate Bomb",
    "",
    {hint "Bomb Detonated!";LRG_SC_BombDefused = true; publicVariable "LRG_SC_BombDefused";/*[[dabomb], -5] call ace_explosives_fnc_scriptedExplosive;*/},
    {true},
    []
] call LR_fnc_AddCreatorAction;