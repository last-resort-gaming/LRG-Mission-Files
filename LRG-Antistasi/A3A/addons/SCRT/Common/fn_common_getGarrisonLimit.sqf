params ["_marker"];

private _limit = switch (true) do {
	case (_marker in airportsX): {
		floor (rebelGarrisonLimit * 1.5)
	};
	case (_marker in milbases): {
		floor (rebelGarrisonLimit * 1.25)
	};
	case (_marker in (factories + resourcesX)): {
		floor (rebelGarrisonLimit * 0.5)
	};
	default {
		rebelGarrisonLimit
	};
};

_limit