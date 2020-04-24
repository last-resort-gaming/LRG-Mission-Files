if (!isServer) exitWith {};
? damage startdummy2 >= 1 : exit

_dir = random 359;
_startpos = (_this select 0);
_camppos = (_this select 1);

SPAWN_MAIN_ALL setPosATL (getPosATL _startpos);
box1 setPos [(getPos _camppos select 0) -19+(random 5),(getPos _camppos select 1) -19+(random 5), 0];

~7
{_x setPos [(getPos SPAWN_MAIN_ALL select 0)-20*sin(_dir),(getPos SPAWN_MAIN_ALL select 1)-20*cos(_dir),+0.5]} forEach playableUnits;

~5
startdummy1 setdammage 1;
startdummy2 setdammage 1;

~20
player allowDammage true;

exit;