// check for helicopter around _pos with radius _size
// count by side and decrement TTL counter for the side
// with the most helis in the zone

// first side to exceed the _TTL scores points
// and the zone is moved toward the team with the lowest score

LRG_FN_ZoneMarker = createMarker ["LRG_FN_ZoneMarker_A", LRG_FN_ZonePos];
LRG_FN_ZoneMarker setMarkerShape "ELLIPSE";
LRG_FN_ZoneMarker setMarkerSize [LRG_FN_ZoneRadius, LRG_FN_ZoneRadius];
LRG_FN_ZoneMarker setMarkerAlpha 0.75;
LRG_FN_ZoneMarker setMarkerColor "ColorOrange";

// create zone task
[true, "LRG_FN_ZoneTask", ["Capture the zone to score points for your team!", "Capture the Zone", "Zone"], LRG_FN_ZonePos, "ASSIGNED", 100, true, "", true] call BIS_fnc_taskCreate;

[
	{
		if (LRG_FN_Zone_GraceCur > 0) exitWith {
			LRG_FN_ZoneContest = format ["<t size='0.5'>New Zone will spawn in: %1</t>", LRG_FN_Zone_GraceCur];
			LRG_FN_Zone_GraceCur = LRG_FN_Zone_GraceCur - 1;
		};

		// count heli by side
		// decrement ttl counter for team with most helis in zone
		// if a team's ttl is <= 0, update scores and move zone
		_helicopters = LRG_FN_ZonePos nearObjects ["Helicopter", LRG_FN_ZoneRadius];

		private _bluCount = 0;
		private _redCount = 0;
		private _greCount = 0;

		private _moveZone = false;

		{
			if ((alive _x) && (not isTouchingGround _x)) then {
				_side = _x getVariable ["LRG_FN_heliSide", sideUnknown];

				switch (_side) do {
					case west: { _bluCount = _bluCount + 1 };
					case east: { _redCount = _redCount + 1 };
					case independent: { _greCount = _greCount + 1 };
					default { };
				};
			};
		} forEach _helicopters;

		_maxCount = selectMax [_bluCount, _redCount, _greCount];
		_cond = compileFinal format ["_x == %1", _maxCount];

		if (_maxCount == 0) exitWith { LRG_FN_ZoneContest = "<t size='0.5'>No-one in Zone!</t>" };
		if ((_cond count [_bluCount, _redCount, _greCount]) > 1) exitWith { LRG_FN_ZoneContest = "<t size='0.5'>Zone Contested!</t>" };

		if (_maxCount == _bluCount) then {
			LRG_FN_Blu_TTL = LRG_FN_Blu_TTL - 1;
			LRG_FN_ZoneContest = "<t size='0.5' color='#0000ff'>Blue Team</t><t size='0.5'> is capturing the Zone!</t>";
		};

		if (_maxCount == _redCount) then {
			LRG_FN_Red_TTL = LRG_FN_Red_TTL - 1;
			LRG_FN_ZoneContest = "<t size='0.5' color='#ff0000'>Red Team</t><t size='0.5'> is capturing the Zone!</t>";
		};

		if (_maxCount == _greCount) then {
			LRG_FN_Gre_TTL = LRG_FN_Gre_TTL - 1;
			LRG_FN_ZoneContest = "<t size='0.5' color='#00ff00'>Green Team</t><t size='0.5'> is capturing the Zone!</t>";
		};

		if (LRG_FN_Blu_TTL <= 0) then {
			//update score
			LRG_FN_BluScore = LRG_FN_BluScore + LRG_FN_ZoneValue;
			["LRG_FN_ScoreUpdated", [west, "Zone Captured!", LRG_FN_ZoneValue]] call CBA_fnc_globalEvent;

			_moveZone = true;
		};

		if (LRG_FN_Red_TTL <= 0) then {
			//update score
			LRG_FN_RedScore = LRG_FN_RedScore + LRG_FN_ZoneValue;
			["LRG_FN_ScoreUpdated", [east, "Zone Captured!", LRG_FN_ZoneValue]] call CBA_fnc_globalEvent;

			_moveZone = true;
		};

		if (LRG_FN_Gre_TTL <= 0) then {
			//update score
			LRG_FN_GreScore = LRG_FN_GreScore + LRG_FN_ZoneValue;
			["LRG_FN_ScoreUpdated", [independent, "Zone Captured!", LRG_FN_ZoneValue]] call CBA_fnc_globalEvent;

			_moveZone = true;
		};

		// check if we need to move the zone
		if (_moveZone) then {

			LRG_FN_Zone_GraceCur = LRG_FN_Zone_Grace;
			deleteMarker LRG_FN_ZoneMarker;

			[
				{LRG_FN_Zone_GraceCur <= 0},
				{
					// side with lowest score
					_minScore = selectMin [LRG_FN_BluScore, LRG_FN_RedScore, LRG_FN_GreScore];

					private _minSides = [];

					if (_minScore == LRG_FN_BluScore) then { _minSides pushBack west };
					if (_minScore == LRG_FN_RedScore) then { _minSides pushBack east };
					if (_minScore == LRG_FN_GreScore) then { _minSides pushBack independent };

					_side = selectRandom _minSides;

					private _spawnPos = [0, 0];

					switch (_side) do {
						case west: { _spawnPos = getMarkerPos LRG_FN_BluSpawn };
						case east: { _spawnPos = getMarkerPos LRG_FN_RedSpawn };
						case independent: { _spawnPos = getMarkerPos LRG_FN_GreSpawn };
						default { };
					};

					_distance = LRG_FN_ZonePos distance2D _spawnPos;
					_dir = LRG_FN_ZonePos getDir _spawnPos;

					// move zone about a fourth of the way to the worst team's spawn
					_factor = 0.4 + (random 0.1);
					_newDistance = _factor * _distance;

					while {_newDistance < (LRG_FN_ZoneRadius * 2)} do {
						_rPos = [nil, ["water", [getMarkerPos LRG_FN_BluSpawn, 3000], [getMarkerPos LRG_FN_RedSpawn, 3000], [getMarkerPos LRG_FN_GreSpawn, 3000], [getMarkerPos "demil_zone", 3000]]] call BIS_fnc_randomPos;
						_newDistance = LRG_FN_ZonePos distance2D _rPos;
						_dir = LRG_FN_ZonePos getDir _rPos;
					};

					LRG_FN_ZonePos = LRG_FN_ZonePos getPos [_newDistance, _dir];

					// move the marker
					LRG_FN_ZoneMarker = createMarker [format ["LRG_FN_ZoneMarker_%1", time], LRG_FN_ZonePos];
					LRG_FN_ZoneMarker setMarkerShape "ELLIPSE";
					LRG_FN_ZoneMarker setMarkerSize [LRG_FN_ZoneRadius, LRG_FN_ZoneRadius];
					LRG_FN_ZoneMarker setMarkerAlpha 0.75;
					LRG_FN_ZoneMarker setMarkerColor "ColorOrange";

					// reset team TTLs
					LRG_FN_Blu_TTL = LRG_FN_ZoneTTL;
					LRG_FN_Red_TTL = LRG_FN_ZoneTTL;
					LRG_FN_Gre_TTL = LRG_FN_ZoneTTL;

					["LRG_FN_ZoneTask", LRG_FN_ZonePos] call BIS_fnc_taskSetDestination;
				}
			] call CBA_fnc_waitUntilAndExecute;
		};
	},
	1,
	[]
] call CBA_fnc_addPerFrameHandler;