waitUntil {!isNull player};

_unit = _this select 0;

if (wsl3 == _unit) then {_unit addAction ["Deploy ammo crate","_num = player nearEntities ['Man',15]; if(count _num >0) then{['Deploying Ammo Crate',10] ; sleep 5; ammocrate3 SetPos (player modeltoworld [0,3,0])} else {hint 'Need more allies nearby to deploy Rally Point'}","",1.5,false,true,"","_this == _target"];};