private _onScreenTime = 10;

sleep 10;

private _messages = call {

    [
        [ "Welcome to the LRG Public Warlords Server.", ["Work as a team, win the mission."] ],
        [ "Server Rules are located on the Map.", ["Make sure you follow them!"] ],
        [ "Optional Mods are enabled on this server.", ["Check out the map for details!"] ],		
        [ "No idea what you're doing?", ["Ask us on Discord.LastResortGamming.net"] ]
    ];
};

{
    _x params ["_heading", "_lines"];

    sleep 2;

    _finalText = format ["<t size='0.70' color='#ffae00' align='right'>%1<br /></t><t size='0.60' color='#FFFFFF' align='right'>", _heading];
    { _finalText = _finalText + format ["%1<br />", _x]; } forEach _lines;
    _finalText = _finalText + "</t>";

    _onScreenTime + (((count _lines) - 1) * 0.5);

    [
        _finalText,
        [safezoneX + safezoneW - 1.2,0.8], //DEFAULT: 0.5,0.35
        [safezoneY + safezoneH - 0.8,0.9], //DEFAULT: 0.8,0.7
        _onScreenTime,
        0.5
    ] spawn BIS_fnc_dynamicText;

    sleep (_onScreenTime);
} forEach _messages;