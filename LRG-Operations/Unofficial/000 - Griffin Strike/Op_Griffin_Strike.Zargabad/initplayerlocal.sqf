tawvd_disablenone = true;
tawvd_maxRange = 12000;
enableSentences FALSE;															
enableSaving [FALSE,FALSE];
player enableFatigue FALSE;
[] execVM "scripts\3rdView Restrictions.sqf";
execVM "Scripts\NRE_earplugs.sqf";

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};

