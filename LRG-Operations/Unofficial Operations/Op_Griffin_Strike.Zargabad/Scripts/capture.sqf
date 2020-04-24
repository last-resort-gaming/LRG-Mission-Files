/*
    File: capture.sqf
    Author: cobra4v320
*/

_officer = _this select 0; //object the action is attached to
_caller = _this select 1; //caller of the action
_id = _this select 2; //the action ID

_officer removeAction _id; //remove action from officer
_officer setCaptive true; //set the officer to captive

detach _officer;
_officer enableAI "ANIM";
_officer switchMove "";

_rifle = primaryWeapon _officer; //get the officers primary weapon
if (_rifle != "") then {
    _officer action ["dropWeapon", _officer, _rifle]; //drop weapon animation (doesn't actually remove the weapon)
    waitUntil {animationState _officer == "amovpercmstpsraswrfldnon_ainvpercmstpsraswrfldnon_putdown" || time > 3}; //waituntil drop weapon animation is complete
    removeAllWeapons _officer; //remove all the officers weapons
};

_pistol = handgunWeapon _officer; //get the officers primary weapon
if (_pistol != "") then {
    _officer action ["dropWeapon", _officer, _pistol]; //drop weapon animation (doesn't actually remove the weapon)
    waitUntil {animationState _officer == "amovpercmstpsraswrfldnon_ainvpercmstpsraswrfldnon_putdown" || time > 3}; //waituntil drop weapon animation is complete
    removeAllWeapons _officer; //remove all the officers weapons
};

_officer playmove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon" ;
_officer disableai "ANIM"; //disable animation so he doesnt move
_officer disableAI "MOVE"; //disable move so he doesnt run away

if (alive _officer) then {
    _officer addAction ["<t color=""#1EFF00"">" + "Follow Me" ,"follow.sqf", [], 1, true, false, "", "_target distance _this < 10 && side _this == blufor"]; //add the follow me action to the officer
};