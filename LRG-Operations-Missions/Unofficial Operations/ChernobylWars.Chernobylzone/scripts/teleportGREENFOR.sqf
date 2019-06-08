_tele = _this select 0;
_caller = _this select 1;

removeAllWeapons _caller;
_caller setPos (getpos(Safety));
