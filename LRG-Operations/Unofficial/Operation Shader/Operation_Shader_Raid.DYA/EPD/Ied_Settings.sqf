/***************SETTINGS***********************/
EPD_IED_debug = false;
hideIedSectionMarkers = true;  //sets the alpha to 0 after spawning IEDs at a section
hideSafeZoneMarkers = true;  //sets the alpha to 0 of a safezone

itemsRequiredToDisarm = ["ACE_DefusalKit"];   //"MineDetector" or "ToolKit" for example
betterDisarmers = ["UK3CB_BAF_Engineer_MTP"]; // people who are better at disarming

baseDisarmChance = 70; //how well everybody can disarm
bonusDisarmChance = 20; //increase that the "betterDisarmers" get

secondaryChance = 10; //Chance that a secondary IED will spawn.

smallChance = 50; //Chance that a small IED will be chosen.
mediumChance = 30; //Chance that a medium IED will be chosen.
largeChance = 20; //Chance that a large IED will be chosen.

iedSecondaryItems = ["Land_CanisterOil_F","Land_FMradio_F","Land_Canteen_F","Land_BottlePlastic_V2_F"];

iedSmallItems = ["Land_Teapot_EP1","Land_Bowl_EP1","Land_Pneu", "Fuel_can", "Land_cype_paletaA", "plp_ct_SuitcaseFabricBeigeSide", "Land_Blankets_EP1", "Land_Carpet_2_EP1", "ACE_Wheel", "Land_Portable_generator_F", "Land_FoodContainer_01_F", "Land_jbad_basket", "Land_BarrelEmpty_F", "Land_BarrelEmpty_grey_F", "Land_PlasticCase_01_medium_F", "Land_WoodenCrate_01_F", "Land_GasTank_01_blue_F", "Radio_Old", "Fort_Crate_Wood", "Land_Canister_EP1"];
	
iedMediumItems = ["Land_GarbageWashingMachine_F", "Land_Misc_Garb_Heap_EP1", "Land_popelnice", "Land_Bag_EP1", "Land_bag_stack_EP1", "Barrel1", "Land_cype_paletyC", "CUP_washing_machine", "Land_Pallets_stack_F", "Fridge_01_closed_F", "Land_jbad_KitchenStove_Elec", "Land_GarbagePallet_F", "Land_JunkPile_F", "Land_CratesShabby_F", "Land_Reservoir_EP1"];
	
iedLargeItems = ["UralWreck","Land_Wreck_Ural_F", "SKODAWreck"];

//If you want to use locations without making markers on the map, define them here. Altis has been provided as an example. ***THESE ARE NOT WHERE THE ACTUAL IEDS ARE SPAWNED***
//["Name",[LocationX,LocationY,LocationZ],size]
predefinedLocations = [["area1",[4087.77,2370.29,0],1500],["bridge1",[3756.7,579.060,0],1]];

iedPredefinedLocationsSize = count predefinedLocations;

/***************EXPERIMENTAL***********************/
// This is still being worked on and may contain bugs, please report them on the forums.
allowExplosiveToTriggerIEDs = true; 

/***************END EXPERIMENTAL*******************/


//These are the actual IEDs that will spawn. Add them using one of the following formats.
//mapLocations must have their type defined as one of "NameCityCapital","NameCity","NameVillage", "NameLocal"
//["All", side]
//["AllCities", side]
//["AllVillages", side]
//["AllLocals", side]
//["mapLocation", side]
//["mapLocation", amountToPlace, side];
//["mapLocation", iedsToPlace, fakesToPlace, side]
//["mapLocation", amountToPlace, [fakeChance, smallIedChance, mediumIedChance, largeIedChance], side]
//["predefinedLocation", side]
//["predefinedLocation", amountToPlace, side];
//["predefinedLocation", iedsToPlace, fakesToPlace, side]
//["predefinedLocation", amountToPlace, [fakeChance, smallIedChance, mediumIedChance, largeIedChance], side]
/*********Marker size > 1**********************/
//["marker", amountToPlace, [fakeChance, smallIedChance, mediumIedChance, largeIedChance], side]
//["marker", iedsToPlace, fakesToPlace, side]
//["marker", amountToPlace, side]
//["marker", side]
/*********Marker size = 1**********************/
//["marker", side]
//["marker", chanceToBeReal, side]
//["marker", [fakeChance, smallIedChance, mediumIedChance, largeIedChance] , side]

//The side can be a single side, or an array of sides
//Ex. "West"   or ["West,"East"]
//http://community.bistudio.com/wiki/side

iedInitialArray = [
		["area1", 100, [94,3,2,1], "West"],
		["bridge1", 1, [0,0,100,0], "West"]
		
	];
	
//Place the mapLocations, predefinedLocations, and markerNames of places you don't want any IEDs spawning
iedSafeZones = ["SafeZone"];