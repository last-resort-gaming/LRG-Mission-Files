#Server Parameters
$Server = 4				# Which Server to use. Can be 1, 2, 3, 4, 5														DEFAULT: 3
$Clear_Logs = 1			# If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		DEFAULT: 1
$Copy_Keys = 0			# If set to 1 all available keys will be copied to directory. 									DEFAULT: 0

#Mission Parameters
$Password = 'LRGTraining'								#Password used by clients to connect to the server.
$MissionFolder = 'LRG_Training_v3_15.hebontes'						#Exact name of mission folder e.g. MyMission.Altis
$Headless_Clients = 0									#Number if Headless Clients to boot on the server. 				DEFAULT: 1

$ClientMods = 'C:\Mods\@CBA_A3;C:\Mods\@RKSL Studios- Attachments v3.01;C:\Mods\@3CB BAF Equipment;C:\Mods\@3CB BAF Weapons;C:\Mods\@3CB BAF Vehicles;C:\Mods\@3CB BAF Units;C:\Mods\@ace;C:\Mods\@RHSUSAF;C:\Mods\@BDF parachutes vanilla;C:\Mods\@3CB BAF Units (ACE compatibility);C:\Mods\@ShackTac User Interface;C:\Mods\@BackpackOnChest;C:\Mods\@task_force_radio;C:\Mods\@ACE Compat - RHS United States Armed Forces;C:\Mods\@ACEX;C:\Mods\@LRG Fundamentals;C:\Mods\@ACE Interaction Menu Expansion;C:\Mods\@Enhanced Movement;C:\Mods\@HEBONTES MILITARY TRAINING GROUND;C:\Mods\@3CB BAF Weapons (RHS ammo compatibility);C:\Mods\@BDF parachutes RHS;C:\Mods\@ILBE Assault Pack - Rewrite;C:\Mods\@LAMBS_Danger.fsm'
$ServerMods = 'C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling'

D:\LoginDetails.ps1 $Server $Clear_Logs $Copy_Keys $Password $MissionFolder $Headless_Clients $ClientMods $ServerMods