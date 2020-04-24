///3rdView Restrictions Ver2.0///

if (!isDedicated) then {

	waitUntil {!isNull (findDisplay 46)};

	if (difficultyEnabled "3rdPersonView") then
	{
		while {true} do {

			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

			if  (((vehicle player) == player) && (speed ( player)) >= 0) then {
				player switchCamera "INTERNAL";
			};
			sleep 0.1;

			if (((vehicle player)isKindOf "LandVehicle") && (speed (vehicle player)) >= 0) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

            if (( vehicle player) isKindOf "Helicopter" && (getPosVisual (vehicle player) select 2) > 0) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

            if ((vehicle player) isKindOf "Plane" && (speed (vehicle player)) >= 0) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

			if (((vehicle player)isKindOf "Ship") && (speed (vehicle player)) >= 0) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;


		};
	};

};