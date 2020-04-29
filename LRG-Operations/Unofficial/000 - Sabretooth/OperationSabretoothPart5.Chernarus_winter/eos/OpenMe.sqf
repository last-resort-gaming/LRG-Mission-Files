EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKER"],[3,1,100],[2,1,100],[1,2,30],[2,60],[2,100],[1,0,10],[1,0,250,WEST,false,false]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=FALSE;		// Counts killed units


null=[["dev"],[8,0,100],[4,1,100],[0,0,0],[0,0],[4,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["gvo"],[3,1,100],[3,1,100],[1,4,100],[0,0], [2,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["kra"],[5,1,100],[4,1,100],[1,2,100],[1,100], [2,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["air"],[1,1,100],[2,1,100],[0,0,0],[1,100],[1,100],[1,2,100],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["prt"],[7,1,100],[4,1,100],[1,2,100],[2,100], [4,100],[0,0,0],[6,1,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["pol"],[3,1,100],[3,1,100],[1,4,100],[0,0], [2,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["gor"],[3,1,100],[3,1,100],[1,4,100],[0,0], [2,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["dub"],[3,1,100],[3,1,100],[1,4,100],[0,0], [2,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["ber"],[5,1,100],[4,1,100],[1,2,100],[1,100], [2,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;