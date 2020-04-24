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

null = [["EOSzone_low_01","EOSzone_low_02","EOSzone_low_03","EOSzone_low_04","EOSzone_low_05","EOSzone_low_06","EOSzone_low_07","EOSzone_low_08","EOSzone_low_09","EOSzone_low_10","EOSzone_low_11","EOSzone_low_12","EOSzone_low_13","EOSzone_low_14","EOSzone_low_15","EOSzone_low_16","EOSzone_low_17","EOSzone_low_18","EOSzone_low_19","EOSzone_low_20","EOSzone_low_21"],[1,1,60],[1,2],[0,0],[0],[1,60],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // LOW town patrol
null = [["EOSzone_normal_01","EOSzone_normal_02","EOSzone_normal_03","EOSzone_normal_04","EOSzone_normal_05","EOSzone_normal_06","EOSzone_normal_07","EOSzone_normal_08"],[1,1,80],[2,1],[0,0],[0],[1,80],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // NORMAL town patrol
null = [["EOSzone_high_01","EOSzone_high_02","EOSzone_high_03","EOSzone_high_04","EOSzone_high_05","EOSzone_high_06","EOSzone_high_07","EOSzone_high_08"],[2,1],[3,1],[0,0],[0],[2],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // HIGH town patrol
null = [["EOSzone_satphone_01","EOSzone_satphone_02","EOSzone_satphone_03","EOSzone_satphone_04","EOSzone_satphone_05","EOSzone_satphone_06","EOSzone_satphone_07","EOSzone_satphone_08","EOSzone_satphone_09","EOSzone_satphone_10","EOSzone_satphone_11","EOSzone_satphone_12","EOSzone_satphone_13","EOSzone_satphone_14","EOSzone_satphone_15"],[1,1],[1,1,70],[0,0],[0],[0,0],[0,0],[5,1,250,EAST,FALSE,FALSE]] call EOS_Spawn;   // satphone guard

null = [["EOSzone_low_patrol_01","EOSzone_low_patrol_02","EOSzone_low_patrol_03","EOSzone_low_patrol_04","EOSzone_low_patrol_05","EOSzone_low_patrol_06","EOSzone_low_patrol_07","EOSzone_low_patrol_08","EOSzone_low_patrol_09","EOSzone_low_patrol_10","EOSzone_low_patrol_11","EOSzone_low_patrol_12","EOSzone_low_patrol_13","EOSzone_low_patrol_14","EOSzone_low_patrol_15","EOSzone_low_patrol_16","EOSzone_low_patrol_17","EOSzone_low_patrol_18","EOSzone_low_patrol_19","EOSzone_low_patrol_20","EOSzone_low_patrol_21","EOSzone_low_patrol_22"],[0,0],[1,2,60],[0,0],[0],[0],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // LOW field patrol
null = [["EOSzone_normal_patrol_01","EOSzone_normal_patrol_02","EOSzone_normal_patrol_03","EOSzone_normal_patrol_04","EOSzone_normal_patrol_05","EOSzone_normal_patrol_06","EOSzone_normal_patrol_07","EOSzone_normal_patrol_08","EOSzone_normal_patrol_09","EOSzone_normal_patrol_10","EOSzone_normal_patrol_11","EOSzone_normal_patrol_12"],[0,0],[2,2,70],[0,0],[0],[0],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // NORMAL field patrol
null = [["EOSzone_jungle_01","EOSzone_jungle_02","EOSzone_jungle_03","EOSzone_jungle_04","EOSzone_jungle_05","EOSzone_jungle_06","EOSzone_jungle_07","EOSzone_jungle_08","EOSzone_jungle_09","EOSzone_jungle_10","EOSzone_jungle_11","EOSzone_jungle_12","EOSzone_jungle_13","EOSzone_jungle_14","EOSzone_jungle_15","EOSzone_jungle_16","EOSzone_jungle_17","EOSzone_jungle_18","EOSzone_jungle_19","EOSzone_jungle_20","EOSzone_jungle_21","EOSzone_jungle_22","EOSzone_jungle_23","EOSzone_jungle_24","EOSzone_jungle_25","EOSzone_jungle_26","EOSzone_jungle_27","EOSzone_jungle_28","EOSzone_jungle_29","EOSzone_jungle_30","EOSzone_jungle_31","EOSzone_jungle_32","EOSzone_jungle_33","EOSzone_jungle_34","EOSzone_jungle_35","EOSzone_jungle_36","EOSzone_jungle_37","EOSzone_jungle_38","EOSzone_jungle_39","EOSzone_jungle_40","EOSzone_jungle_41","EOSzone_jungle_42","EOSzone_jungle_43","EOSzone_jungle_44","EOSzone_jungle_45","EOSzone_jungle_46","EOSzone_jungle_47","EOSzone_jungle_48","EOSzone_jungle_49","EOSzone_jungle_50","EOSzone_jungle_51","EOSzone_jungle_52","EOSzone_jungle_53","EOSzone_jungle_54","EOSzone_jungle_55"],[0,0],[1,1,80],[0,0],[0],[0],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // low jungle patrol

null = [["EOSzone_jeep_01","EOSzone_jeep_02","EOSzone_jeep_03","EOSzone_jeep_04","EOSzone_jeep_05","EOSzone_jeep_06","EOSzone_jeep_07","EOSzone_jeep_08","EOSzone_jeep_09","EOSzone_jeep_10","EOSzone_jeep_11","EOSzone_jeep_12","EOSzone_jeep_13","EOSzone_jeep_14","EOSzone_jeep_15","EOSzone_jeep_16","EOSzone_jeep_17","EOSzone_jeep_18"],[0,0],[0,0],[2,0],[0],[0],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // Jeep patrol
null = [["EOSzone_apc_01","EOSzone_apc_02","EOSzone_apc_03","EOSzone_apc_04","EOSzone_apc_05","EOSzone_apc_06","EOSzone_apc_07","EOSzone_apc_08","EOSzone_apc_09","EOSzone_apc_10"],[0,0],[0,0],[0,0],[2],[0],[0,0],[5,1,400,EAST,FALSE,FALSE]] call EOS_Spawn;   // APCs patrol

null = [["EOSzone_param_01","EOSzone_param_02","EOSzone_param_03","EOSzone_param_04","EOSzone_param_05","EOSzone_param_06","EOSzone_param_07","EOSzone_param_08","EOSzone_param_09","EOSzone_param_10","EOSzone_param_11","EOSzone_param_12"],[2,1],[2,2],[2,0],[1],[2],[0,0],[5,1,300,EAST,FALSE,FALSE]] call EOS_Spawn;   // param patrol HARD

null = [["EOSzone_CP_01","EOSzone_CP_02","EOSzone_CP_03","EOSzone_CP_04","EOSzone_CP_05","EOSzone_CP_06","EOSzone_CP_07","EOSzone_CP_08","EOSzone_CP_09","EOSzone_CP_10","EOSzone_CP_11","EOSzone_CP_12","EOSzone_CP_13"],[0,0],[1,2],[0,0],[0],[1],[0,0],[5,1,800,EAST,FALSE,FALSE]] call EOS_Spawn;   // checkpoints

null = [["EOSzone_CIV_jeep_01","EOSzone_CIV_jeep_02","EOSzone_CIV_jeep_03","EOSzone_CIV_jeep_04","EOSzone_CIV_jeep_05","EOSzone_CIV_jeep_06","EOSzone_CIV_jeep_07","EOSzone_CIV_jeep_08","EOSzone_CIV_jeep_09","EOSzone_CIV_jeep_10","EOSzone_CIV_jeep_11","EOSzone_CIV_jeep_12","EOSzone_CIV_jeep_13","EOSzone_CIV_jeep_14","EOSzone_CIV_jeep_15","EOSzone_CIV_jeep_16","EOSzone_CIV_jeep_17","EOSzone_CIV_jeep_18","EOSzone_CIV_jeep_19","EOSzone_CIV_jeep_20","EOSzone_CIV_jeep_21","EOSzone_CIV_jeep_22","EOSzone_CIV_jeep_23"],[0,0],[0,0],[2,0],[0],[0],[0,0],[2,1,300,INDEPENDENT,FALSE,FALSE]] call EOS_Spawn;   // CIV Jeep traffic

