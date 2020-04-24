/*
MCTemp
Name: earplugs.SQF
Author: Matth (Inspired by 654wak654)
Use: Add user action to insert or remove Earplugs.
*/

private _action = ["<t color='#00FF00'>Insert Earplugs</t>", {

		private _player = _this select 1;
		private _id = _this select 2;
		
		if (soundVolume == 1) then {
			1 fadeSound 0.5;
			_player setUserActionText [_id,"<t color='#FF0000'>Remove Earplugs</t>"]
		} else {
			1 fadeSound 1;
			_player setUserActionText [_id,"<t color='#00FF00'>Insert Earplugs</t>"]
		};
	}, [], -10, FALSE, TRUE, "", "_target isEqualTo vehicle player"];

_this addAction _action;

_this addEventHandler ["Respawn",{
	1 fadeSound 1;
	(_this select 0) addAction _action;
}];