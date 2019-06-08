
if !(isClass (configFile >> "CfgPatches" >> "task_force_radio")) exitwith {diag_log "LRG_Logging: TFAR is disabled."};

diag_log "LRG_Logging: TFAR is enabled. Default frequencies set.";

private _freqs = [
  [
	"Command",
    "1Section",
    "2Section",
    "3Section",	
    "909EAW",
	"Recce"
  ],
  [
    [0,9,[LRFrequency_1,LRFrequency_2,LRFrequency_4,LRFrequency_3,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,[LRFrequency_1,LRFrequency_4,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,[LRFrequency_1,LRFrequency_4,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,[LRFrequency_1,LRFrequency_4,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,[LRFrequency_3,LRFrequency_4,LRFrequency_2,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,[LRFrequency_1,LRFrequency_4,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false]	
  ],
  [
    [0,9,["475","500","425","100","200","300","400",LREmptyFrequency],0,nil,-1,0,false],
    [0,9,["100","125","150","425",LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,["200","225","250","425",LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,["300","325","350","425",LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,["400","425",LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false],
    [0,9,["70","75","425",LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency,LREmptyFrequency],0,nil,-1,0,false]  
    
  ]
];

{
  _section = _x getVariable "LRG_section";
  if !(isNil "_section") then {
    _idx = (_freqs select 0) find _section;
    if !(_idx isEqualTo -1) then {
      _x setVariable ["tf_lr_frequency", (_freqs select 1) select _idx, true];
      _x setVariable ["tf_sw_frequency", (_freqs select 2) select _idx, true];	  
    };
  };
} count allGroups;

