private _sideX = side group player;

private _playersX = nil;
private _markersX = nil;

while {true} do {
	waitUntil {sleep 0.5; visibleMap || {visibleGPS || {isMenuOpen}}};
	_playersX = [];
	_markersX = [];

	while {visibleMap || {visibleGPS || {isMenuOpen}}} do {
		private _playableUnits = playableUnits;

		{
			private _playerX = _x getVariable ["owner",_x];
			if (!(_playerX in _playersX) && {side group _playerX == _sideX}) then {
				_playersX pushBack _playerX;
				private _mrk = createMarkerLocal [format ["A3A_pmrk_%1", name _playerX], position _playerX];
				_mrk setMarkerTypeLocal "mil_triangle";
				_mrk setMarkerColorLocal "ColorWhite";
				_mrk setMarkerTextLocal format ["%1",name _playerX];
				_markersX pushBack _mrk;
			};	
		} forEach _playableUnits;

		{
			_playerX = _x;
			private _mrk = format ["A3A_pmrk_%1", name _playerX];
			if (vehicle _playerX == _playerX) then {
				_mrk setMarkerAlphaLocal 1;
				_mrk setMarkerPosLocal position _playerX;
				_mrk setMarkerDirLocal getDir _playerX;
				if (_playerX getVariable ["incapacitated",false] || {_playerX getVariable ["ACE_isUnconscious",false]}) then {
					_mrk setMarkerTextLocal format [localize "STR_markers_injured_player", name _playerX];
					_mrk setMarkerColorLocal "ColorRed";
				}
				else {
					_mrk setMarkerTextLocal format ["%1",name _playerX];
					_mrk setMarkerColorLocal "ColorWhite";
				};
			}
			else {
				private _veh = vehicle _playerX;
				if ((!isPlayer driver _veh) || {driver _veh == _playerX}) then {
					_mrk setMarkerAlphaLocal 1;
					_mrk setMarkerPosLocal position _veh;
					_mrk setMarkerDirLocal getDir _veh;
					_textX = format ["%1 (%2)/",name _playerX,getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName")];

					{
						_textX = format ["%1%2/",_textX,name _x];
					} forEach (_playableUnits select {_x != _playerX && {vehicle _x == _veh}});

					_mrk setMarkerTextLocal _textX;
				}
				else {
					_mrk setMarkerAlphaLocal 0;
				};
			};
		} forEach _playersX;
		sleep 1;
	};

	{deleteMarkerLocal _x} forEach _markersX;
};
