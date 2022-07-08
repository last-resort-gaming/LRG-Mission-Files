// by ALIAS
// STORM SCRIPT 
// Tutorial: https://www.youtube.com/user/aliascartoons

/*
================================================================================================================================
>>>>> TORNADO Parameters ======================
================================================================================================================================

null = ["marker_start","marker_end"] execvm "AL_tornado\al_tornado.sqf";

"marker_start"	- string, name of the marker where the tornado starts from
"marker_end"	- string, name of the marker towards tornado moves and where will end

================================================================================================================================
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> EXAMPLES <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
================================================================================================================================

// TORNADO
null = ["p1","p2"] execvm "AL_tornado\al_tornado.sqf";

to stop the tornado before reaching its destination, you can do so via scripting broadcasting this variable:
	
	tornadosino = "goof";
	publicvariable "tornadosino";

*/