private _posBase = getMarkerPos respawnTeamPlayer;
_potentials = [];

private _sites = citiesX select {
    private _markerPos = getMarkerPos _x; 
    sidesX getVariable [_x,sideUnknown] != teamPlayer 
    && {[_x] call A3A_fnc_isFrontline}
};

//fallback in case nothing would be found
if (count _sites == 0) then {
    _sites = citiesX;
};

private _missionSite = selectRandom _sites;

isRivalsDiscoveryQuestAssigned = true;
publicVariable "isRivalsDiscoveryQuestAssigned";

[[_missionSite],"A3A_fnc_RIV_ENC_Rivals"] remoteExec ["A3A_fnc_scheduler",2];