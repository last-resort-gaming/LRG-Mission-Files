class LR {

			tag = "LR";
			class Init {

				file = "Functions\Init";
				class PreInit {preInit = 1;};
				class PostInit {postInit = 1;};

			};
			
			class Arsenal {

				file = "Functions\Arsenal";
				class Arsenal {postInit = 1;};
				class AmmoBox {postInit = 1;};
				class TimedArsenal {postInit = 1;};

			};

			class Messages {

				file = "Functions\Messages";
				class globalhint {};

			};			
			
};

class CHVD
{
	tag = "CHVD";
	class script
	{
		file = "Functions\CHVD";
		class onSliderChange {};
		class onLBSelChanged {};
		class onLBSelChanged_syncmode {};
		class onEBinput {};
		class onEBterrainInput {};
		class onEBinput_syncmode {};
		class selTerrainQuality {};
		class updateTerrain {};
		class updateSettings {};
		class updateVehType {};
		class fovViewDistance {};
		class UAVstatus {};
		class openDialog {};
		class localize {};
		class trueZoom {};
		class keyBindings {};
		class keyDown {};
		class keyDownTerrain {};
		class init {postInit = 1;};
	};
};