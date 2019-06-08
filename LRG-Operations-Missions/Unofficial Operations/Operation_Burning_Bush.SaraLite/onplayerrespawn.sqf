{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;



player setPos getMarkerPos "respawn_west";
player setPosASL [getPosASL player select 0, getPosASL player select 1, 24];
player setDir 165;
    
    
