//hide markers
{_x SetMarkerAlpha 0} forEach ["zb","zb_1","zb_2","zb_3","zb_4","zb_5","zb_6","zb_7","zb_8","zb_9",
"zs","zs_1","zs_2","zs_3","zs_4","zs_5","zs_6","zs_7","zs_8","zs_9","zs_10","zs_11","zs_12","zs_13","zs_14","zs_15","zs_16","zs_17","zs_18","zs_19","zs_20","zs_21","zs_22","zs_23","zs_24","zs_25","zs_26","zs_27","zs_28","zs_29","zs_30","zs_31",
"amb","amb_1","amb_2","amb_3","amb_4","amb_5","amb_6","amb_7","amb_8","amb_9","amb_10","amb_11","amb_12","amb_13","amb_14","amb_15","amb_16",
"zp","zp_1","zp_2","zp_3","zp_4","zp_5","zp_6","zp_7","zp_8","zp_9","zp_10","zp_11","zp_12","zp_13","zp_14","zp_15","zp_16","zp_17","zp_18"];

if (isServer) then {
[] execVM "scripts\randompos.sqf";
};


cost = false;
funds = 10000;


////////////////// Parameters
sleep 4;
[] execvm "params.sqf";

sleep 6;
[]execVM "eos\OpenMe.sqf";

def_trg attachTo [def1, [0,0,0]];







