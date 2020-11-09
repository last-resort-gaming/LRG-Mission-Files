// F3 Functions

class F // Defines the "owner"
{
	class common // category
	{
		file = "f\common";
		class processParamsArray{preInit = 1; postInit=1;};
		class nearPlayer{};
	};
	class mpEnd
	{
		file = "f\mpEnd";
		class mpEnd{};
		class mpEndReceiver{};
	};
	class setGroupID
	{
		file = "f\setGroupID";
		class setGroupID{};
	};
	class missionConditions
	{
		file = "f\missionConditions";
		class SetTime{};
		class SetFog{};
		class SetWeather{};
		class SetWind{};
	};
	class cache
	{
		file = "f\cache";
		class cInit {};
		class cTracker {};
		class gCache {};
		class gUncache {};
	};
	class bodyRemoval
	{
		file = "f\removeBody";
		class removeBody{};
	};
	class preMount
	{
		file = "f\preMount";
		class mountGroups{};
	};
	class zeus
	{
		file = "f\zeus";
		class zeusInit{};
		class zeusAddAddons{};
		class zeusAddObjects{};
	};
	class fspectator
	{
		file = "f\spect";
		class CamInit{};
		class OnUnload{};
		class DrawTags{};
		class EventHandler{};
		class FreeCam{};
		class GetPlayers{};
		class ReloadModes{};
		class UpdateValues{};
		class HandleCamera{};
		class ToggleGUI{};
		class OnMapClick{};
		class DrawMarkers{};
		class ForceExit{};
		class HandleMenu{};
		class showMenu{};
	};
};

class CHVD
{
	tag = "CHVD";
	class script
	{
		file = "f\CHVD";
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