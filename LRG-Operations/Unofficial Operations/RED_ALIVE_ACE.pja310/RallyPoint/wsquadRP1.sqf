waitUntil {!isNull player};

_unit = _this select 0;

if (wsl1 == _unit) then {_unit addAction ["Deploy Squad Rally Point","_num = player nearEntities ['Man',15]; if(count _num >1) then{['Deploying Squad Rally Point',10] spawn HGF_fnc_progressBar; sleep 10; wsquadRP1 SetPos (player modeltoworld [0,3,0])} else {hint 'Need more allies nearby to deploy Rally Point'}","",1.5,false,true,"","_this == _target"];};