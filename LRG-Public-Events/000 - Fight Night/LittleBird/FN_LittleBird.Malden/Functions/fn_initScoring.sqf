LRG_FN_GameStarted = false;

LRG_FN_BluScore = 0;
LRG_FN_RedScore = 0;
LRG_FN_GreScore = 0;

LRG_FN_BluSpawn = "blu_zone";
LRG_FN_RedSpawn = "red_zone";
LRG_FN_GreSpawn = "gre_zone";

LRG_FN_HeloValue = 1;

LRG_FN_Duration = 90*60;

LRG_FN_ZoneTTL = 90;
LRG_FN_ZoneRadius = 750;
LRG_FN_ZoneStartPos = [3500,6500,0];
LRG_FN_ZonePos = LRG_FN_ZoneStartPos;
LRG_FN_ZoneMarker = "";
LRG_FN_ZoneValue = 1 max (round (2 * (LRG_FN_ZoneTTL / 60)));
LRG_FN_ZoneContest = "<t size='0.5'>Zone Contested!</t>";

LRG_FN_Blu_TTL = LRG_FN_ZoneTTL;
LRG_FN_Red_TTL = LRG_FN_ZoneTTL;
LRG_FN_Gre_TTL = LRG_FN_ZoneTTL;

LRG_FN_Zone_Grace = 15;
LRG_FN_Zone_GraceCur = 0;

["LRG_FN_ScoreUpdated", {
	params ["_side", "_msg", "_weight"];

	private ["_sideName", "_sideColour"];

	switch (_side) do {
		case west: {
			_sideName = "Blue";
			_sideColour = "#0000ff";
		};
		case east: {
			_sideName = "Red";
			_sideColour = "#ff0000";
		};
		case independent: {
			_sideName = "Green";
			_sideColour = "#00ff00";
		};
		default { _sideName = "" };
	};

	_scoremsg = if (_weight > 0) then {
		format ["%1 Team has scored %2 points(s)", _sideName, _weight]
	} else {
		format ["%1 Team has lost %2 point(s)", _sideName, _weight]
	};

	hintSilent parseText (format [
		"<t size='2' color='#3'>Score Updated</t><br/><br/>%2:<br/>%1", _msg, _scoremsg, _sideColour
	]);

	if (player getUnitTrait "Mission Maker") then {
		systemChat format ["%1. Reason: %2", _scoremsg, _msg];
	};

}] call CBA_fnc_addEventHandler;

[
	"MissionStart",
	"Start Mission",
	"",
	{remoteExec ["LR_FN_fnc_startGame", 2]},
	{not LRG_FN_GameStarted}
] call LR_fnc_AddCreatorAction;