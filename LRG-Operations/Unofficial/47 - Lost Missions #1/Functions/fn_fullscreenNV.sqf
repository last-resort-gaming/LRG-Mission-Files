switch LR_fullscreenNVMode do {

	case 0: {
		if (cameraView != "GUNNER") then {
			player action ["nvGoggles", player];
			LR_fullscreenNVMode = 1;
		};
	};

	case 1: {
		if (cameraView != "GUNNER") then {
			player action ["nvGogglesOff", player];
			setAperture 0.5;
			LR_fullscreenNVMode = 2;
		};
	};

	case 2: {
		if (cameraView != "GUNNER") then {
			setAperture -1;
			LR_fullscreenNVMode = 0;
		};
	};
};