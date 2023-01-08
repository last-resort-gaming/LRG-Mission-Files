/****************************************************************
File: R_SN_EHKILLEDCIV.sqf
Author: Rafalsky

Description:

Parameter(s):

Returns:
	
****************************************************************/	
private ["_killer","_side"];

_killer = _this select 1;
		
//only if player killed a civilian
if (isPlayer _killer) then 
{			
	KILLED_CIV_COUNTER set [0,(KILLED_CIV_COUNTER select 0) + 1];			
			
	switch (side _killer) do
	{
		case west:
		{
			KILLED_CIV_COUNTER set [1,(KILLED_CIV_COUNTER select 1) + 1];
			UPSMON_WEST_HM = UPSMON_WEST_HM - UPSMON_Ammountofhostility;
		};
			
		case east:
		{
			KILLED_CIV_COUNTER set [2,(KILLED_CIV_COUNTER select 2) + 1];
			UPSMON_EAST_HM = UPSMON_EAST_HM - UPSMON_Ammountofhostility;
		};
			
		case resistance:
		{
			KILLED_CIV_COUNTER set [3,(KILLED_CIV_COUNTER select 3) + 1];
			UPSMON_GUER_HM = UPSMON_GUER_HM - UPSMON_Ammountofhostility;
		};
	};		
	
	KILLED_CIV_COUNTER set [4,_killer];
			
	if (R_WHO_IS_CIV_KILLER_INFO > 0) then 
	{      
		[UPSMON_Logic_civkill,format ["A CIVILIAN WAS KILLED BY %1",name _killer]] remoteExecCall ["globalChat", 0];
	};	
};