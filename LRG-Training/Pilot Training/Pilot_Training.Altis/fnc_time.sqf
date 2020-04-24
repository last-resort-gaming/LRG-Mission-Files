fnc_formatTime = {
	_totalTime = _this select 0;
	_formatTime = "";
	{
		_timeUnit = call compile format["floor (_totalTime %1 %2 60)", _x, "%"];
		if (_timeUnit < 10) then { _timeUnit = format["0%1",_timeUnit]; } else { _timeunit = str _timeUnit };
		_formatTime = (_formatTime + ":" + _timeUnit);
	}forEach ["/60/60","/60",""];
	_formatTime
};

fnc_time = {
	_competitor = _this select 0;
	_startTime = time;
	waitUntil {player setVariable ["currentLap", (time - _startTime)]; lapOver};
	player sideChat "Lets see if you passed, in the meantime, please land the chopper on the trailer that you started from.";
	if (!dnf) then {
		_totalTime = (time - _startTime);
		lapOver = false;
		_bestTime = player getVariable "bestLap";
		if ( _totalTime < _bestTime) then {
			player setVariable ["bestLap",_totalTime];
		};
	};
	dnf = false;
};
