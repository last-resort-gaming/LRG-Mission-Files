if !(hasInterface) exitWith {};

if (player getUnitTrait "Mission Maker") then {
//	LRG_QSIcons_MasterEnable = true;
//	[] execVM "z\LRG Fundamentals\addons\QS Icons\Scripts\QS_icons.sqf";

	[
		{
			{
				if !(_x getUnitTrait "Mission Maker") then {
					drawIcon3D [
						"a3\ui_f\data\IGUI\Cfg\Cursors\attack_ca.paa",
						[1,0,0,1],
						_x modelToWorldVisual [0, 0, 0],
						1,
						1,
						0,
						name _x
					];
				};

				private _text_1 = "";
				private _colour_1 = "";
				private _text_2 = "";
				private _colour_2 = "";
				private _text_3 = "";

				if (isObjectHidden player) then {
					_text_1 = "You're Invisible";
					_colour_1 = "00ff00";
				} else {
					_text_1 = "You're visible";
					_colour_1 = "ff0000"
				};

				if (player getVariable ["LR_GodMode_On", false]) then {
					_text_2 = "God-Mode Enabled";
					_colour_2 = "00ff00";
				} else {
					_text_2 = "God-Mode Disabled";
					_colour_2 = "ff0000"
				};

				switch (LR_fullscreenNVMode) do {

					case 0: {
						_text_3 = "Normal Vision";
					};

					case 1: {
						_text_3 = "Night Vision";
					};

					case 2: {
						_text_3 = "Super Vision";
					};
				};

				[
					format ["<t color='#%2' size='%3'>%1</t><br/><t color='#%5' size='%3'>%4</t><br/><t color='#88bbd6' size='%3'>%6</t>", _text_1, _colour_1, 0.5, _text_2, _colour_2, _text_3],
					0,
					1.2,
					1,
					0,
					0,
					789
				] spawn BIS_fnc_dynamicText;

			} forEach allPlayers;
		},0,[]
	] call CBA_fnc_addPerFrameHandler;
};