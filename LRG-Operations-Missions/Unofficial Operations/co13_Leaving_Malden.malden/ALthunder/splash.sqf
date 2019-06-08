// by ALIAS

if (!hasInterface) exitWith {};

_rain_effect_screen = _this select 0;

if (_rain_effect_screen!="none") then 
{
// function by Killzone Kid adapted by ALIAS
KK_fnc_incover = {
	lineIntersectsSurfaces [
		getPosWorld _this, 
		getPosWorld _this vectorAdd [0, 0, 50], 
		_this, objNull, true, 1, "GEOM", "NONE"
	] select 0 params ["","","","_cover"];
	if (!isNil "_cover") then {missionNamespace setVariable ["under_cover_rain", true, false]}
	else {missionNamespace setVariable ["under_cover_rain", false, false]}
};
//onEachFrame {player call KK_fnc_incover};
//EachFrame {player call KK_fnc_incover};
// function by Killzone Kid adapted by ALIAS
	[] spawn 
	{
		while {true} do 
		{
			waitUntil {rain >0};
			player call KK_fnc_incover;
			sleep 0.1;
		}
	}
};

if (_rain_effect_screen=="blur") then 
{
private ["_bottom_def"];
while {true} do 
	{
	_rain_temp = rain;
	waitUntil {(rain>0.04) and !(missionNamespace getVariable "under_cover_rain")};
	_top_def =  linearConversion [0.04,1,rain,0,0.1,true];
	if (_top_def>0) then {_bottom_def = _top_def+0.1} else {_bottom_def=0};
	
	effect_screen_wet = ppEffectCreate ["WetDistortion", 300];			
	effect_screen_wet ppEffectEnable true;
	effect_screen_wet ppEffectAdjust 
	[
	0.5 /*value blur*/,_top_def/*top*/,_bottom_def/*bottom*/,
	1/*horiz1 speed*/,0.5/*horiz2 speed*/,/*vert1 speed*/-1,/*vert2 speed*/-0.5,
	0.05/*hor1 ampl*/,0.01/*hor2 ampl*/,0.1/*vert1 ampl*/,/*vert2 ampl*/0.01,
	0.03/*randx*/,0.02/*randy*/,
	0.1/*posx*/,0.2/*posy*/
	];
	effect_screen_wet ppEffectCommit 0;
	waitUntil {(rain<0.04) or (missionNamespace getVariable "under_cover_rain") or (abs(rain - _rain_temp)>0.1)};
	effect_screen_wet ppEffectEnable false; ppEffectDestroy effect_screen_wet;
	};
};

if (_rain_effect_screen=="mixt") then 
{
	//_poz_obj_splash = createVehicle ["Sign_Sphere10cm_F", [0,0,0], [], 0, "CAN_COLLIDE"];
	_poz_obj_splash = "land_helipadempty_f" createVehicle [0,0,0];
	//[_poz_obj_splash, true] remoteExec ["hideObjectGlobal", 2];
	_poz_obj_splash attachTo [player, [0, 0.1, 0.2], "head"];

	[] spawn 
	{
		while {true} do 
		{
		if (rain>0.04) then
		{
			waitUntil {cameraView == "EXTERNAL"};
			
			_top_def =  linearConversion [0.04,1,rain,0.01,0.1,true];
			_bottom_def = _top_def+0.1;
			
			effect_screen_wet = ppEffectCreate ["WetDistortion", 300]; 			
			effect_screen_wet ppEffectEnable true;
			effect_screen_wet ppEffectAdjust 
			[
			0.6 /*value blur*/,_top_def/*top*/,_bottom_def/*bottom*/,
			0/*horiz1 speed*/,0/*horiz2 speed*/,/*vert1 speed*/0,/*vert2 speed*/0,
			0.05/*hor1 ampl*/,0.01/*hor2 ampl*/,0.1/*vert1 ampl*/,/*vert2 ampl*/0.01,
			0.015/*randx*/,0.01/*randy*/,
			0.05/*posx*/,0.1/*posy*/
			];
			effect_screen_wet ppEffectCommit 0;
			
		};
		waitUntil {(rain<0.04)or(cameraView != "EXTERNAL") or (missionNamespace getVariable "under_cover_rain")};
		effect_screen_wet ppEffectEnable false; ppEffectDestroy effect_screen_wet;
		waitUntil {(rain>0.04) and (cameraView == "EXTERNAL") and !(missionNamespace getVariable "under_cover_rain")};
		};
	};

	while {true} do 
	{
	while {rain>0.01} do 
	{	
		_w_drop_int = linearConversion [0.1,1,rain,0.2,0.01,true];
		_rain_temp = rain;
		water_drop = "#particlesource" createVehicleLocal getPosATL _poz_obj_splash;
		water_drop setParticleCircle [0, [0, 0, 0]];
		water_drop setParticleRandom [0, [0.2, 0.2, 0.2], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
		water_drop setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 0.2, [0, 0, 0], [0, 0, 0], 0, 10.5, 7.9, 0, [0.02, 0.03, 0.03], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [0.08], 1, 0, "", "", _poz_obj_splash];
		water_drop setDropInterval _w_drop_int;

		waitUntil {(vehicle player != player) or (cameraView != "INTERNAL") or (abs(rain - _rain_temp)>0.1) or (missionNamespace getVariable "under_cover_rain")};
		if (missionNamespace getVariable "under_cover_rain") then {deleteVehicle water_drop; waitUntil {!(missionNamespace getVariable "under_cover_rain")}};
		if (rain != _rain_temp) then {deleteVehicle water_drop};
		if (cameraView != "INTERNAL") then {deleteVehicle water_drop; waitUntil {cameraView == "INTERNAL"}};
		if (vehicle player != player) then {deleteVehicle water_drop; waitUntil {vehicle player == player}};
	};
	deleteVehicle water_drop;
	waitUntil {rain>0.04};
	};
};