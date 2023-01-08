#include "..\..\script_component.hpp"
FIX_LINE_NUMBERS()
params ["_siteX"];

private _garrison = garrison getVariable [_siteX,[]];
private _size = [_siteX] call A3A_fnc_sizeMarker;
private _positionX = getMarkerPos _siteX;
private _estatic = if (_siteX in roadblocksFIA) then {localize "STR_garrison_info_technicals"} else {localize "STR_garrison_info_statics"};
private _limit = [_siteX] call SCRT_fnc_common_getGarrisonLimit;

//sort garrison into unit types
private _units = [ [],[],[],[],[],[],[],[],[],[] ];
{
    _units # (switch _x do {
    case (FactionGet(reb,"unitSL")): {0};
    case (FactionGet(reb,"unitCrew")): {1};
    case (FactionGet(reb,"unitRifle")): {2};
    case (FactionGet(reb,"unitMG")): {3};
    case (FactionGet(reb,"unitMedic")): {4};
    case (FactionGet(reb,"unitGL")): {5};
    case (FactionGet(reb,"unitSniper")): {6};
    case (FactionGet(reb,"unitLAT")): {7};
    case (FactionGet(reb,"unitEng")): {8};
    case (FactionGet(reb,"unitExp")): {9};
    }) pushBack _x;
} forEach _garrison;

_textX = format [
    localize "STR_garrison_info"
    , count _garrison
    , count (_units#0)
    , count (_units#1)
    , count (_units#2)
    , count (_units#3)
    , count (_units#4)
    , count (_units#5)
    , count (_units#6)
    , count (_units#7)
    , count (_units#8)
    , count (_units#9)
    , {_x distance _positionX < _size} count staticsToSave
    , _estatic
    , _limit
];

_textX
