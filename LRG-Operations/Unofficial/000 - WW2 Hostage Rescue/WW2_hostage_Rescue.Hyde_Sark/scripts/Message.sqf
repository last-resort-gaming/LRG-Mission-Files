/*
File: welcomeciv.sqf
Author: ZedBuster
    Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
Description:
Creates an intro on the bottom-right hand corner of the screen.
*/
 

_plrName = profileName;

 
//Pause the script until the player has spawned.
waitUntil {alive player};
 
_imag  = "<img image='media\images\march.paa' size='10' align='center'/>"; _text = format["<br/><br/><t color='#C5B6B5' size='1.0' align='center'>Willkommen, %1,  auf Insel Sark, du blutiger Anfànger.<br/><br/>Stahlhelm auf und ab in den Kampf, Kanonenfutter.<br/><br/> Kampfpackung ergreifen.Stillgestanden bis dein Truppführer bereit ist und dir Befehle erteilt. </t><br/><br/>",_plrName];  
hint parseText (_imag + _text);
 
_onScreenTime = 10;
 
//Figure out what class the player is in.

playMusic "Erika";
sleep 2; //Wait in seconds before the credits start after player is in-game
_role1 = "";  //Add your texts here!
_role1names = [""];  //Add your texts here!
_role2 = "";  //Add your texts here!
_role2names = [""];  //Add your texts here!
_role3 = "";  //Add your texts here!
_role3names = [""];  //Add your texts here!
_role4 = "";  //Add your texts here!
_role4names = [""];  //Add your texts here!
_role5 = "";  //Add your texts here!
_role5names = [""];  //Add your texts here!
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
 
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]
];