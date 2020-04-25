#Server Parameters
$Server = 2				# (1,2,3) 		DEFAULT: 2	1 Public, 2 Private, 3 Testing/Spare.													
$Clear_Logs = 1			# (0,1) 		DEFAULT: 1	If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		
$verifySignatures = 0	# (0,1)			DEFAULT: 0	Check the client has the same mods loaded as the server. Enable for public servers.			
$EnableVON = 0			# (0,1)			DEFAULT: 0	Enable in game VON channels (Side chat, command chat ect). Enable for non TFAR servers.		
$EnableBattleye = 0		# (0,1)			DEFAULT: 0	Enabled Battleye anti-cheat. Should always be on for public servers, optional on Ops.			
$Headless_Clients = 0	# (0,1)			DEFAULT: 1	Number of Headless Clients to boot on the server. 											
$Enable3rdPerson  = 0	# (0,1)			DEFAULT: 0	Usually disabled on Ops, enabled on public server.											

#Mission Parameters
$Password = 'LRGTraining'								#Password used by clients to connect to the server.
$MissionFolder = 'LRG_Training_v3_15.hebontes'						#Exact name of mission folder e.g. MyMission.Altis

$ClientMods = 'C:\Mods\@CBA_A3;C:\Mods\@RKSL Studios- Attachments v3.01;C:\Mods\@3CB BAF Equipment;C:\Mods\@3CB BAF Weapons;C:\Mods\@3CB BAF Vehicles;C:\Mods\@3CB BAF Units;C:\Mods\@ace;C:\Mods\@RHSUSAF;C:\Mods\@BDF parachutes vanilla;C:\Mods\@3CB BAF Units (ACE compatibility);C:\Mods\@ShackTac User Interface;C:\Mods\@BackpackOnChest;C:\Mods\@task_force_radio;C:\Mods\@ACE Compat - RHS United States Armed Forces;C:\Mods\@ACEX;C:\Mods\@LRG Fundamentals;C:\Mods\@ACE Interaction Menu Expansion;C:\Mods\@Enhanced Movement;C:\Mods\@HEBONTES MILITARY TRAINING GROUND;C:\Mods\@3CB BAF Weapons (RHS ammo compatibility);C:\Mods\@BDF parachutes RHS;C:\Mods\@ILBE Assault Pack - Rewrite;C:\Mods\@LAMBS_Danger.fsm'
$OptionalMods = 'C:\Mods\@Achilles;C:\Mods\@BackpackOnChest;C:\Mods\@Blastcore Edited (standalone version);C:\Mods\@CBA_A3;C:\Mods\@DynaSound 2;C:\Mods\@Enhanced Movement;C:\Mods\@Enhanced Soundscape;C:\Mods\@JSRS SOUNDMOD;C:\Mods\@ShackTac User Interface;C:\Mods\@ZEC - Zeus and Eden Templates - Building Compositions;C:\Mods\@ZEI - Zeus and Eden Interiors;C:\Mods\@Zeus Enhanced'

D:\LoginDetails.ps1 $Server $Clear_Logs $verifySignatures $EnableVON $EnableBattleye $Headless_Clients $Enable3rdPerson $Password $MissionFolder $ClientMods $ServerMods $OptionalMods