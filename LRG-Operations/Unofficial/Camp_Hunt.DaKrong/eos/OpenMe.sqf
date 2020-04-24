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
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=false;		// Counts killed units

//null=[["z1"],[0,0,0],[8,2,100],[6,0,100],[4,100], [0,0],[0,0,0],[2,1,10,INDEPENDENT]] call EOS_Spawn;
//null=[["z2"],[0,0,0],[6,2,100],[4,0,100],[2,100], [0,0],[0,0,0],[2,1,10,INDEPENDENT]] call EOS_Spawn;

null=[["antenz"],[1,1,100],[2,2,100],[0,0,0],[0,0], [1,100],[0,0,0],[0,1,900,EAST,false,false]] call EOS_Spawn;
null=[["camp1z"],[1,1,100],[2,2,100],[0,0,0],[0,0], [1,100],[0,0,0],[0,1,900,EAST,false,false]] call EOS_Spawn;

//occupied big towns zones
//null=[["zb"],[4,2,80],[3,2,81],[2,0,79],[2,78], [1,82],[0,0,0],[0,1,500,EAST,true,false]] call EOS_Spawn;

//occupied small towns zones
null=[["zs"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_1"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_2"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_3"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_4"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_5"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_6"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_7"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;
null=[["zs_8"],[2,2,62],[2,1,63],[0,0,0],[0,0], [1,61],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;

//caches
null=[["cachez1"],[1,1,100],[1,1,100],[0,0,0],[0,0], [1,100],[0,0,0],[0,1,210,EAST,true,false]] call EOS_Spawn;
null=[["cachez2"],[1,1,100],[1,1,100],[0,0,0],[0,0], [1,100],[0,0,0],[0,1,210,EAST,true,false]] call EOS_Spawn;
null=[["cachez3"],[1,1,100],[1,1,100],[0,0,0],[0,0], [1,100],[0,0,0],[0,1,210,EAST,true,false]] call EOS_Spawn;

//ambushes
//null=[["amb"],[1,2,50],[1,2,51],[0,0,0],[0,0], [0,0],[0,0,0],[2,1,120,INDEPENDENT,true,false]] call EOS_Spawn;

//aa
null=[["aa1z"],[1,1,100],[2,1,100],[0,0,0],[0,0], [0,0],[0,0,0],[0,1,220,EAST,true,false]] call EOS_Spawn;

//defend def1z
null=[["def1z"],[4,2],[0,0],[0],[0,0],[2,0,INDEPENDENT,true,false],[360,2,360,true,false]] call Bastion_Spawn;

//patrols
null=[["antenpz"],[0,0,0],[2,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,230,INDEPENDENT,true,false]] call EOS_Spawn;
null=[["camp1pz"],[0,0,0],[2,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,230,INDEPENDENT,true,false]] call EOS_Spawn;
null=[["aa1pz"],[0,0,0],[2,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,230,INDEPENDENT,true,false]] call EOS_Spawn;
null=[["mortar1pz"],[0,0,0],[2,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,230,INDEPENDENT,true,false]] call EOS_Spawn;

//mortar
null=[["mortar1z"],[1,1,100],[2,2,100],[0,0,0],[0,0], [1,100],[0,0,0],[0,1,200,EAST,false,false]] call EOS_Spawn;

//hvt
null=[["hvtz"],[1,2,100],[2,1,100],[1,0,100],[0,0], [1,100],[0,0,0],[0,1,200,EAST,true,false]] call EOS_Spawn;

//global patrols
null=[["zp"],[0,0,0],[5,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,1,INDEPENDENT,true,false]] call EOS_Spawn;
null=[["zp_1"],[0,0,0],[5,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,1,INDEPENDENT,true,false]] call EOS_Spawn;
null=[["zp_2"],[0,0,0],[5,2,100],[0,0,0],[0,0],[0,0],[0,0,0],[2,1,1,INDEPENDENT,true,false]] call EOS_Spawn;



