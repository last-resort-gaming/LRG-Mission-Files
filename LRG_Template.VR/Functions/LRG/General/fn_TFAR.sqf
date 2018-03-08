private _freqs = [
  [
	"Command",
    "1Section",
    "2Section",
    "3Section",	
    "909",
	"Recce"
  ],
  [
    [0,7,["30","40","50","60","60","60","60","60","60","60"],0,nil,-1,0,false],
    [0,7,["30","60","60","60","60","60","60","60","60","60"],0,nil,-1,0,false],
    [0,7,["30","60","60","60","60","60","60","60","60","60"],0,nil,-1,0,false],
    [0,7,["30","60","60","60","60","60","60","60","60","60"],0,nil,-1,0,false],
    [0,7,["50","60","40","60","60","60","60","60","60","60"],0,nil,-1,0,false],
    [0,7,["30","60","60","60","60","60","60","60","60","60"],0,nil,-1,0,false]	
  ]
];

{
  _section = _x getVariable "LRG_section";
  if !(isNil "_section") then {
    _idx = (_freqs select 0) find _section;
    if !(_idx isEqualTo -1) then {
      _x setVariable ["tf_lr_frequency", (_freqs select 1) select _idx, true];
    };
  };
} count allGroups;