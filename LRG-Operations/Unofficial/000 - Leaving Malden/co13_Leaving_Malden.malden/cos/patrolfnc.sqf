_group=group (_this select 0);
_group setBehaviour "Combat";
_group setSpeedMode "Normal";

	if (side (_this select 0) == independent) 
		then {
	_index = currentWaypoint group player;
	deleteWaypoint [_group, _index];
	_group allowFleeing 0.8;
		}else{
		deleteWaypoint [_group, _index];
			};
	
(_this select 0) removeAllEventHandlers "FiredNear";