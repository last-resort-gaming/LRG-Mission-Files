// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_aircraft_nocopilot = [
"FireLit",
"LIB_FW190F8",
"LIB_FW190F8_Italy",
"LIB_FW190F8_4",
"LIB_FW190F8_2",
"LIB_FW190F8_5",
"LIB_FW190F8_3",
"LIB_Ju87_Italy2",
"LIB_Ju87_Italy",
"LIB_Ju87"
	];

waitUntil {player == player};

_iampilot = (player getUnitTrait "Derp_Pilot");

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only
		
		if((_veh isKindOf "Helicopter" || _veh isKindOf "Plane") && !(_veh isKindOf "ParachuteBase")) then {
			if(({typeOf _veh == _x} count _aircraft_nocopilot) > 0) then {
				_forbidden = [_veh turretUnit [0]];
				if(player in _forbidden) then {
					if (!_iampilot) then {
						systemChat "Du bist immer noch kein Pilot, Volldepp!";
						player action ["getOut",_veh];
					};
				};
			};
			if(!_iampilot) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					systemChat "Du bist immer noch kein Pilot, Volldepp!";
					player action ["getOut", _veh];
				};
			};
		};
	
	};
};

