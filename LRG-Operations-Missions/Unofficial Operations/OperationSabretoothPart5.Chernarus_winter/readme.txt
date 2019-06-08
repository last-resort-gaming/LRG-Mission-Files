MKY_Snow_Script - beta v2
10.25.2015 by m0nkey

To use the script, in missions description.ext (or wherever cfgMusic values are located):

class CfgMusic
{
	tracks[]={};

	class MKY_Blizzard
	{
		name = "";
		sound[] = {"\MKY\sounds\m0nkey_blizzard.ogg", db+10, 1.0};
	};

};

See basic_init.sqf for example of how to call the snow effects.

See the sample mission description.ext and init.sqf for in-use example.

Execute file make_snow_maps.bat to copy the sample mission 15 times, once for each snow map.
The sample mission needs to be in the same directory as the .bat file!

Used Zen Coop Framework for a few things. If you've not tried that out yet, its worth the look.
----------------------------------------------------------------
This was my mods list, in this exact order, for all maps to work.
Sometimes, because of the dependencies and porting, you have to restart as some maps get flaky.
Of course you don't have to use all of them, its just a complete list, as an example.
(note some, like Klurs, need to be loaded before AiA TP)
(also note dependencies are loaded before maps that depend on them)

mods=@CBA_A3_v1123;
@map_Klurs_A1_511;
@AiA_TP;
@map_Chernarus_Winter_10;
@tool_fps_counter;
@map_Thirsk_10;
@map_Pomegratskaya_winter_02;
@map_PLR_Bulge_11;
@req_bet_addons_147;
@map_Huertgenwald_111;
@map_Huertgenwald_winter_10;
@map_Nome_island_winter_12;
@map_Vostok_11;
@map_Vostok_winter_11;
@req_German_Misc_Pack_17;
@req_mb_rocks_v0.7beta;
@req_mb_veg_09;
@req_MBG_Buildings_3;
@req_mbg_killhouses_10;
@map_Franken_10;
@map_Schwemlitz_104;
@map_Helvantis_11;
@req_JBAD_Buildings_0512;
@map_lost_island_112

** I have since started using Chernarus winter for A3 which does require AiA_TP but is not problematic (and has no special load sequence).
** I did copy the utes_winter pbo file from the A2 version and put it in the A3 addons folder.


