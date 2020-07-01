LRG_FN_BluScore = 0;
LRG_FN_RedScore = 0;

LRG_FN_HeloValue = 1;
LRG_FN_PlayerValue = 1;

if (!hasInterface) exitWith {};

[
	{
		[
			format ["<t size='0.8' color='#0000ff'>%1</t><t size='0.8'> - </t><t color='#ff0000' size='0.8'>%2</t>", LRG_FN_BluScore, LRG_FN_RedScore],
			-1, -0.4, 1,
			0, 0, 789
		] remoteExec ["BIS_fnc_dynamicText", 0];
	},
	1
] call CBA_fnc_addPerFrameHandler;

["LRG_FN_ScoreUpdated", {
	params ["_side", "_msg", "_weight"];

	if (isServer) then {
		publicVariable "LRG_FN_BluScore";
		publicVariable "LRG_FN_RedScore";
	};

	_antName = if (_side == west) then {"Red"} else {"Blue"};

	hintSilent parseText (format [
		"<t size='2' color='#00ff00'>Score Updated</t><br/><br/>%3 Team has scored %2 point(s):<br/>%1", _msg, _weight, _antName
	]);

	if (player getUnitTrait "Mission Maker") then {
		systemChat format ["%1 point(s) added to %2 Team. Reason: %3", _weight, _antName, _msg];
	};

}] call CBA_fnc_addEventHandler;