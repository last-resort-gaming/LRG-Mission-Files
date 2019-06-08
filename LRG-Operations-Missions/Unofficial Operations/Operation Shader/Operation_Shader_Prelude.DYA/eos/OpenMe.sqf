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

null=[["Radio"],[5,0,100],[3,1,100],[0,0,0],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["Hujayr"],[15,0,100],[7,1,100],[1,1,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["Compound"],[5,0,100],[3,1,100],[0,0,0],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["AlRahmah"],[20,0,100],[10,1,100],[1,1,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["AlBaiueia1"],[20,0,100],[0,0,100],[0,0,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["AlBaiueia2"],[20,0,100],[0,0,100],[0,0,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["AlBaiueia3"],[20,0,100],[0,0,100],[0,0,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["AlBaiueia4"],[0,0,0],[20,1,100],[3,1,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;  
null=[["Airbase1"],[20,0,100],[20,1,100],[2,1,100],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["Airbase2"],[10,0,100],[5,1,100],[0,0,0],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["Airbase3"],[15,0,100],[5,1,100],[0,0,0],[0,0], [0,0],[0,0,0],[5,1,1500,EAST,FALSE,FALSE]] call EOS_Spawn;