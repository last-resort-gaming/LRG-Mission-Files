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

null=[["peligronairfield"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn; 
null=[["peligronoutpost"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["FernandoOutpost"],[1,2,100],[1,2,100],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["montehofo"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["prospero"],[1,1,50],[1,1,100],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,500,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["EddieShippingPort"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["EddieShippingPort"],[2,2,100],[1,1,100],[1,3,100],[0,0], [2,100],[0,0,0],[7,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["sp1","sp2","sp3","sp4","sp5","sp6","sp7","sp8","sp9","sp10","sp11","sp12","sp13","sp14","sp15","sp16","sp17","sp18","sp19","sp20","sp21","sp22","sp23","sp24"],[0,0,0],[1,1,100],[0,0,0],[0,0], [0,0],[0,0,0],[6,1,700,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["flanker"],[1,2,100],[1,1,100],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["prison"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["medical"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["fantasmoca2"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["marukoship"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["marukopwr"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["hooker"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["chupinka1"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["chupinka2"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["ucca"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["inter"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["tucos"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["flyhalf"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["flyhalfcp"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["CA3"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["CA6"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["CA5"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["lock"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["arulco"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["prop"],[2,2,100],[1,1,100],[1,1,100],[0,0], [2,100],[0,0,0],[6,1,1000,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["corazon"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["palida"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["CA4"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["british"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["marukoaf"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["villon"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[6,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["marukoaf"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[7,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;
null=[["villon"],[0,0,0],[0,0,0],[0,0,0],[0,0], [0,100],[0,0,0],[7,1,600,EAST,FALSE,FALSE]] call EOS_Spawn;