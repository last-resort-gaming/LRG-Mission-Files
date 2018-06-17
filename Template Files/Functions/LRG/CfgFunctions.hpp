class LR {

			tag = "LR";
			class AmmoBox {

				file = "Functions\LRG\AmmoBox";
				class AmmoBox {postInit = 1;};
			};
			
			class Arsenal {

				file = "Functions\LRG\Arsenal";
				class Arsenal {postInit = 1;};
				class TimedArsenal {};
				class ArsenalLoadSave {};
			};

			class General {

				file = "Functions\LRG\General";
				class SafeZone {};
				class SideChat {};				
				class Confirmation {};
				class Diary { postInit = 1; };
				class TFAR {postInit = 1;};
				class MedicalFacility {postInit = 1;};				
			};				
			
			class Messages {

				file = "Functions\LRG\Messages";
				class globalhint {};
				class globalhintc {};				
				class globalhintsilent {};
			};			
			
			class PreInit {

				file = "Functions\LRG\PreInit";
				class PreInit {preInit = 1;};			
			};				
};