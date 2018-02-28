class LR {

			tag = "LR";
			class Init {

				file = "Functions\Init";
				class PreInit {preInit = 1;};
//				class PostInit {postInit = 1;};

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
				class globalhintsilent {};				
			};			
			
};
