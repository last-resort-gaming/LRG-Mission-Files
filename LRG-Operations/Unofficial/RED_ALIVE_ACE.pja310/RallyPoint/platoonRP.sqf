waitUntil {!isNull player}; 

_unit = _this select 0;

if (side player == west) then {_unit addAction ["Deploy Platoon Rally Point","_num = player nearEntities ['Man',15]; if(count _num >0) then{['Deploying Platoon Rally Point',10] spawn HGF_fnc_progressBar; sleep 10; RP_west SetPos (player modeltoworld [0,3,0])} else {hint 'Need more allies nearby to deploy Rally Point'}","",1.5,false,true,"","_this == _target"];};