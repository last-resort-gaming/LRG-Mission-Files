LRG_FN_GameStarted = false;

LRG_FN_BluScore = 0;
LRG_FN_RedScore = 0;

LRG_FN_HeloValue = 1;
LRG_FN_MedicalPunish = -6;

LRG_FN_Duration = 5400;

["LRG_FN_ScoreUpdated", {
	params ["_side", "_msg", "_weight"];

	private ["_antName"];

	_antName = if (_side == west) then {"Blue"} else {"Red"};

	_scoremsg = if (_weight > 0) then {
		format ["%1 Team has scored %2 points(s)", _antName, _weight]
	} else {
		format ["%1 Team has lost %2 point(s)", _antName, _weight]
	};

	hintSilent parseText (format [
		"<t size='2' color='#00ff00'>Score Updated</t><br/><br/>%2:<br/>%1", _msg, _scoremsg
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
	{true}
] call LR_fnc_AddCreatorAction;