/*
MCTemp
Name: unitAdder.SQF
Author: Matth
Use: Adds all units to Zeus
*/
sleep 1;

private _units = allUnits;

private _curators = allCurators;

{
	private _objects = curatorEditableObjects _x;
	
	private _diff = _units - _objects;
	
	_x addCuratorEditableObjects [_diff, FALSE];
	
} forEach _curators;