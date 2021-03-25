// set up an IED with the given Number for Cellphone Dial
// does *NOT* check if the number is already assigned to a different IED!
params ["_explosive", "_magazineClass", "_code"];

if !(isServer) exitWith {};

if (isNil "ACE_Explosives_CellphoneIEDs") then {
    ACE_Explosives_CellphoneIEDs = [];
};

private _nul = ACE_Explosives_CellphoneIEDs pushBack [_explosive, _code, getNumber (configFile >> "CfgMagazines" >> _magazineClass >> "ACE_Triggers" >> "Cellphone" >> "FuseTime")];

publicVariable "ACE_Explosives_CellphoneIEDs";