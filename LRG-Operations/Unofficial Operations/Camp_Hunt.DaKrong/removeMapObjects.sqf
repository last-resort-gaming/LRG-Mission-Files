_markerArray = _this select 0;

{
_terrainobjects = nearestTerrainObjects [(getMarkerPos _x),[],(getMarkerSize _x)select 0];
{hideObjectGlobal _x} forEach _terrainobjects;
}forEach _markerArray;