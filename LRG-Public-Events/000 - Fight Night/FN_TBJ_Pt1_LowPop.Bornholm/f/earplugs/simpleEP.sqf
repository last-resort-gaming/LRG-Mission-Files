_c = "<t color='#ffff33'>";
sepa = [_c + "Insert Earplugs</t>",{
	_u = _this select 1;
	_i = _this select 2;
	if (soundVolume == 1) then {
		1 fadeSound 0.4;
		_u setUserActionText [_i,"<t color='#ffff33'>Remove Earplugs</t>"]
	} else {
		1 fadeSound 1;
		_u setUserActionText [_i,"<t color='#ffff33'>Insert Earplugs</t>"]
	}
},[],-90,false,true,"","_target == vehicle player"];
_this addAction sepa;
_this addEventHandler ["Respawn",{
	1 fadeSound 1;
	(_this select 0) addAction sepa;
}];