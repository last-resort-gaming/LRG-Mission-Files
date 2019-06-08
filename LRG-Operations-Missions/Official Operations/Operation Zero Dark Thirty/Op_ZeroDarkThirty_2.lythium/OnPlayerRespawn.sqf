{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;


if (MissionType == "VANILLA") then {

If (StandardEarplugs) then {[] execVM "scripts\earplugs.sqf";};
if (!EnableVanillaFatigue) then {player enableFatigue false;};

};