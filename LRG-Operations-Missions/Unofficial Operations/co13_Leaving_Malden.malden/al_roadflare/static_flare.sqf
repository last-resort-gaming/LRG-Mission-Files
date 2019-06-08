// by ALIAS
// Roadflare DEMO
// Tutorial: https://www.youtube.com/user/aliascartoons
// null=[[[this],"AL_roadflare\static_flare.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;

private ["_flare_sound_burn","_flare_set","_flare_sound_start","_al_color_flare","_al_throwable_light","_flare_brig","_inter_flare","_int_mic","_al_throwable","_type_throwable","_flare_life","_flare_done"];

_al_throwable = _this select 0;
_al_color_flare = [1,0,0];

if (!hasInterface) exitWith {};

	_flare_set = [1,2,3] call BIS_fnc_selectRandom;
	if (_flare_set==1) then {_flare_sound_start="fl_start_1";_flare_sound_burn="fl_burn_1"};
	if (_flare_set==2) then {_flare_sound_start="fl_start_2";_flare_sound_burn="fl_burn_2"};
	if (_flare_set==3) then {_flare_sound_start="fl_start_3";_flare_sound_burn="fl_burn_3"};
	_al_throwable say3d _flare_sound_start;
	[_al_throwable,_flare_sound_burn] spawn {
		_al_flare_voice = _this select 0;
		_al_flare_arde = _this select 1;
		sleep 0.5;
		while {alive _al_flare_voice} do {
		_al_flare_voice say3d _al_flare_arde;
		sleep 2+random 2 ;
		};
	};
	
	[[[_al_throwable],"AL_roadflare\al_roadflare_effect.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
	
	_al_throwable_light = "#lightpoint" createVehicle getPosATL _al_throwable;  
	_al_throwable_light setLightAmbient _al_color_flare;  
	_al_throwable_light setLightColor _al_color_flare;
	//_al_throwable_light setLightIntensity al_Roadflare_brightness;
	_al_throwable_light setLightBrightness al_Roadflare_brightness;
	_al_throwable_light setLightUseFlare true;
	_al_throwable_light setLightFlareSize 0.1;
	_al_throwable_light setLightFlareMaxDistance 1500;
	_al_throwable_light setLightAttenuation [/*start*/ 0.1, /*constant*/10, /*linear*/40, /*quadratic*/ 2000, /*hardlimitstart*/al_Roadflare_range/1.1,/* hardlimitend*/al_Roadflare_range]; 
	_al_throwable_light setLightDayLight true;

	sleep 0.5;
	_al_throwable_light setpos (getPosATL _al_throwable);
	_flare_done = false;
	_flare_life = 0 spawn {sleep al_Roadflare_lifetime-4;};
	_int_mic=0;
	while {!_flare_done} do {
		_int_mic = 0.05 + random 0.1;
		_brifct = [-10,10] call BIS_fnc_selectRandom;
		sleep _int_mic;
		_flare_brig = al_Roadflare_brightness + random _brifct;
		_al_throwable_light setLightBrightness _flare_brig;
		if (scriptDone _flare_life) then {_flare_done = true;};
	};

	_flare_brig = 30;
	while {_flare_brig>0} do {
		_flare_brig = _flare_brig - 1;
		_al_throwable_light setLightBrightness _flare_brig;
		sleep 0.1;
	};
	deleteVehicle _al_throwable_light;
	deleteVehicle _al_throwable;