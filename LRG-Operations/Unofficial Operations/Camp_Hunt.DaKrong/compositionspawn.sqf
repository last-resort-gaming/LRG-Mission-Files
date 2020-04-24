if (isServer) then {
sleep 5;
0 = [(position anten), 0.0, call (compile (preprocessFileLineNumbers "compositions\anten.sqf"))] call BIS_fnc_ObjectsMapper;
0 = [(position camp1), 0.0, call (compile (preprocessFileLineNumbers "compositions\campsmall2.sqf"))] call BIS_fnc_ObjectsMapper;
0 = [(position aa1), 0.0, call (compile (preprocessFileLineNumbers "compositions\aa_place.sqf"))] call BIS_fnc_ObjectsMapper; 
0 = [(position mortar1), 0.0, call (compile (preprocessFileLineNumbers "compositions\mortarpeet.sqf"))] call BIS_fnc_ObjectsMapper;
0 = [(position cache1), 0.0, call (compile (preprocessFileLineNumbers "compositions\supplypoint.sqf"))] call BIS_fnc_ObjectsMapper;
};