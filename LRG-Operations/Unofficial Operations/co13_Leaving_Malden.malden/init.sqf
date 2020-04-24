//COS & EOS SPAWN SYSTEM
[] execVM "cos\cosInit.sqf";
[] execVM "eos\OpenMe.sqf";
[] exec "scripts\startposition_random.sqf";

civilian setFriend [EAST, 0];
EAST setFriend [civilian, 0];
independent setFriend [EAST, 0];
EAST setFriend [independent, 0];


//get rescued by chopper

_name = format["%1", playableUnits];  //get player name

if (_name != "blackhawk") then
{
    _trg = createTrigger ["EmptyDetector", getPos player];
    _trg setTriggerArea [0, 0, 0, false];
    _trg setTriggerActivation ["NONE", "PRESENT", true];
    _trg setTriggerStatements ["(player in blackhawk) && (alive blackhawk) && (damage takeoffbh_dummy < 0.5)", "blackhawk_action = player addAction ['--- GIVE COMMAND FOR TAKE OFF ---', 'scripts\take_off_chopper.sqf', [], -5, true, true, ''];", "player removeAction blackhawk_action;"];
};

sleep 15;

// START FLARE
null = [] execvm "ini_roadflare.sqf";
al_flare_intensity = 30;
publicvariable "al_flare_intensity";
al_flare_range = 500;
publicvariable "al_flare_range";
player addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[[_al_flare],"AL_flare_fix\al_flare_enhance.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;}];
// END FLARE