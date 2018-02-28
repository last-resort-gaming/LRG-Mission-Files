class LR {

			tag = "LR";
			class AmmoBox {

				file = "Functions\LRG\AmmoBox";
				class AmmoBox {postInit = 1;};
			};
			
			class Arsenal {

				file = "Functions\LRG\Arsenal";
				class Arsenal {postInit = 1;};
				class TimedArsenal {postInit = 1;};

			};

			class Messages {

				file = "Functions\LRG\Messages";
				class globalhint {};
				class globalhintsilent {};				
			};			
			
			class PreInit {

				file = "Functions\LRG\PreInit";
				class PreInit {preInit = 1;};			
			};				
};