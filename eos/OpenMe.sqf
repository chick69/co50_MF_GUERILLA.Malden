EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* 
EOS 1.98 by BangaBob 

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


null = [["inf_syn_1","inf_syn_2","inf_syn_3","inf_syn_4","inf_syn_5","inf_syn_6","inf_syn_7","inf_syn_8","inf_syn_9","inf_syn_10","inf_syn_11","inf_syn_12","inf_syn_13","inf_syn_14","inf_syn_15","inf_syn_16","inf_syn_17","inf_syn_18","inf_syn_19","inf_syn_20","inf_syn_21","inf_syn_22","inf_syn_23","inf_syn_24","inf_syn_25","inf_syn_26","inf_syn_27","inf_syn_28","inf_syn_29","inf_syn_30"],[1,5],[0,0],[0,0],[0],[1],[0,0],[7,1,600,Resistance,TRUE]] call EOS_Spawn;
null = [["inf_fia_1","inf_fia_2","inf_fia_3","inf_fia_4","inf_fia_5","inf_fia_6","inf_fia_7","inf_fia_8","inf_fia_9","inf_fia_10","inf_fia_11","inf_fia_12","inf_fia_13","inf_fia_14","inf_fia_15","inf_fia_16","inf_fia_17","inf_fia_18","inf_fia_19","inf_fia_20","inf_fia_21","inf_fia_22","inf_fia_23","inf_fia_24","inf_fia_25","inf_fia_26","inf_fia_27","inf_fia_28","inf_fia_29","inf_fia_30"],[1,5],[0,0],[0,0],[0],[1],[0,0],[6,1,600,EAST,TRUE]] call EOS_Spawn;
null = [["camp","camp_1","camp_2","camp_3","camp_4","camp_5","camp_6","camp_7","camp_8","camp_9","camp_10","camp_11","camp_12","camp_13","camp_14","camp_15","camp_16","camp_17","camp_18","camp_19","camp_20","camp_21","camp_22","camp_23","camp_24","camp_25","camp_26","camp_27","camp_28","camp_29","camp_30"],[1,3],[5,0],[0,0],[0],[2],[0,0],[8,0,500,EAST,TRUE]] call EOS_Spawn;
null = [["barrage","barrage_1","barrage_2","barrage_3","barrage_4","barrage_5","barrage_6","barrage_7","barrage_8","barrage_9","barrage_10","barrage_11","barrage_12","barrage_13","barrage_14","barrage_15","barrage_16","barrage_17","barrage_18","barrage_19","barrage_20","barrage_21","barrage_22","barrage_23","barrage_24","barrage_25","barrage_26","barrage_27","barrage_28","barrage_29","barrage_30"],[1,3],[4,0],[0,0],[0],[0],[0,0],[7,0,1000,Resistance,TRUE]] call EOS_Spawn;
null = [["mot_1","mot_2","mot_3","mot_4","mot_5","mot_6","mot_7","mot_8","mot_9","mot_10","mot_11","mot_12","mot_13","mot_14","mot_15","mot_16","mot_17","mot_18","mot_19","mot_20","mot_21","mot_22","mot_23","mot_24","mot_25","mot_26","mot_27","mot_28","mot_29","mot_30"],[1,2],[6,1],[3,2],[5],[0],[0,0],[7,1,500,Resistance,TRUE]] call EOS_Spawn;
null = [["mot_1","mot_2","mot_3","mot_4","mot_5","mot_6","mot_7","mot_8","mot_9","mot_10","mot_11","mot_12","mot_13","mot_14","mot_15","mot_16","mot_17","mot_18","mot_19","mot_20","mot_21","mot_22","mot_23","mot_24","mot_25","mot_26","mot_27","mot_28","mot_29","mot_30"],[1,2],[3,0],[3,1],[0],[0],[0],[3,1,500,CIVILIAN,TRUE]] call EOS_Spawn;
//null = [["Town_Arette","Town_Arudy","Town_Cancon","Town_Chapoi","Town_Dourdan","Town_Goisse","Town_Houdan","Town_Larche","Town_Lolisse","Town_Pessagne","Town_Port","Town_PortNorth","Town_PortWest","Town_Riviere","Town_SteMarie","Town_StJean","Town_StLouis","Town_Trinite","Town_Vigny"],[5,1],[3,2],[2],[0,0],[7,0,EAST,false,false],[120,5,3600,TRUE,FALSE]] call Bastion_Spawn;
null = [["occupation_maison_1","occupation_maison_2","occupation_maison_3","occupation_maison_4","occupation_maison_5","occupation_maison_6","occupation_maison_7","occupation_maison_8","occupation_maison_9","occupation_maison_10","occupation_maison_11","occupation_maison_12","occupation_maison_13","occupation_maison_14","occupation_maison_15","occupation_maison_16","occupation_maison_17","occupation_maison_18","occupation_maison_19","occupation_maison_20","occupation_maison_21","occupation_maison_22","occupation_maison_23","occupation_maison_24","occupation_maison_25","occupation_maison_26","occupation_maison_27","occupation_maison_28","occupation_maison_29","occupation_maison_30","occupation_maison_31","occupation_maison_32","occupation_maison_33","occupation_maison_34","occupation_maison_35","occupation_maison_36","occupation_maison_37","occupation_maison_38","occupation_maison_39","occupation_maison_40","occupation_maison_41","occupation_maison_42","occupation_maison_43","occupation_maison_44","occupation_maison_45","occupation_maison_46","occupation_maison_47","occupation_maison_48","occupation_maison_49","occupation_maison_50"],[1,1],[2,1],[0,0],[0],[0],[0,0],[7,0,500,Resistance,TRUE]] call EOS_Spawn;
null = [["TERRITORY_AID_STATION","TERRITORY_AIRPORT_NORTH","TERRITORY_AIRPORT_SOUTH","TERRITORY_AIRPORT_TERMINAL","TERRITORY_BUNKER","TERRITORY_CANCON_PENINSULA","TERRITORY_CHAPEL","TERRITORY_CONSTRUCTION","TERRITORY_GAS_STATION","TERRITORY_MANSION","TERRITORY_MILITARY_BASE","TERRITORY_OLD_MILITARY_BASE_EAST","TERRITORY_OLD_MILITARY_BASE_WEST","TERRITORY_PEGASUS_AIRFIELD","TERRITORY_SUBSTATION","TERRITORY_UN_COMMAND","TERRITORY_UN_OUTPOST","TERRITORY_RADIO_STATION","TERRITORY_AIRCRAFT_CARRIER","TERRITORY_FORTRESS_ISLAND","TERRITORY_ROADBLOCK_1","TERRITORY_ROADBLOCK_2","TERRITORY_ROADBLOCK_3","TERRITORY_ROADBLOCK_4"],[1,3],[5,1],[0,0],[0],[2],[0,0],[8,0,500,EAST,TRUE]] call EOS_Spawn;
//null = [["TERRITORY_AID_STATION","TERRITORY_AIRPORT_NORTH","TERRITORY_AIRPORT_SOUTH","TERRITORY_AIRPORT_TERMINAL","TERRITORY_BUNKER","TERRITORY_CANCON_PENINSULA","TERRITORY_CHAPEL","TERRITORY_CONSTRUCTION","TERRITORY_GAS_STATION","TERRITORY_MANSION","TERRITORY_MILITARY_BASE","TERRITORY_OLD_MILITARY_BASE_EAST","TERRITORY_OLD_MILITARY_BASE_WEST","TERRITORY_PEGASUS_AIRFIELD","TERRITORY_SUBSTATION","TERRITORY_UN_COMMAND","TERRITORY_UN_OUTPOST","TERRITORY_RADIO_STATION","TERRITORY_AIRCRAFT_CARRIER","TERRITORY_FORTRESS_ISLAND","TERRITORY_ROADBLOCK_1","TERRITORY_ROADBLOCK_2","TERRITORY_ROADBLOCK_3","TERRITORY_ROADBLOCK_4"],[5,1],[3,2],[2],[0,0],[6,0,EAST,false,false],[120,5,3600,TRUE,FALSE]] call Bastion_Spawn;

