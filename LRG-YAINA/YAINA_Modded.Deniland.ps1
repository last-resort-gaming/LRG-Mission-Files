#Server Parameters
$Server = 1				# (1,2,3) 		DEFAULT: 2	1 Public, 2 Private, 3 Testing/Spare.													

$verifySignatures = 1	# (0,1)			DEFAULT: 0	Check the client has the same mods loaded as the server. Enable for public servers.			
$EnableVON = 0			# (0,1)			DEFAULT: 0	Enable in game VON channels (Side chat, command chat ect). Enable for non TFAR servers.		
$EnableBattleye = 1		# (0,1)			DEFAULT: 0	Enabled Battleye anti-cheat. Should always be on for public servers, optional on Ops.			
$Headless_Clients = 0	# (0,1)			DEFAULT: 1	Number of Headless Clients to boot on the server. 											
$Enable3rdPerson  = 1	# (0,1)			DEFAULT: 0	Usually disabled on Ops, enabled on public server.											

#Mission Parameters
$Password = ''								#Password used by clients to connect to the server.
$MissionFolder = 'YAINA_Modded.Deniland'		#Exact name of mission folder e.g. MyMission.Altis

$ClientMods = 'C:\Mods\@3CB BAF Equipment;C:\Mods\@3CB BAF Units;C:\Mods\@3CB BAF Units (ACE Compatibility);C:\Mods\@3CB BAF Vehicles;C:\Mods\@3CB BAF Weapons;C:\Mods\@ace;C:\Mods\@CBA_A3;C:\Mods\@LRG Fundamentals;C:\Mods\@RKSL Studios- Attachments v3.01;C:\Mods\@task_force_radio;C:\Mods\@Deniland;C:\Mods\@CUP Terrains - Core;C:\Mods\@CUP Terrains - Maps'
$ServerMods = 'C:\Mods\@a3graphite;C:\Mods\@A3Log;C:\Mods\@Achilles;C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Towing;C:\Mods\@Advanced Urban Rappelling;C:\Mods\@asct;C:\Mods\@CBA_A3;C:\Mods\@infiSTAR_A3;C:\Mods\@infiSTAR_A3_vision EU1;C:\Mods\@inidbi2;C:\Mods\@Server side smoke (for Blastcore Edited);C:\Mods\@yaina_Modded'
$OptionalMods = 'C:\Mods\@Achilles;C:\Mods\@BackpackOnChest;C:\Mods\@Blastcore Edited (standalone version);C:\Mods\@CBA_A3;C:\Mods\@DynaSound 2;C:\Mods\@Enhanced Movement;C:\Mods\@Enhanced Soundscape;C:\Mods\@JSRS SOUNDMOD;C:\Mods\@ShackTac User Interface;C:\Mods\@ZEC - Zeus and Eden Templates - Building Compositions;C:\Mods\@ZEI - Zeus and Eden Interiors;C:\Mods\@Zeus Enhanced'

git fetch
git pull --recurse-submodules
git submodule update --remote
Start-Process -NoNewWindow -Wait -Filepath "src\bin\yaina.bat" -ArgumentList "generate -a -v Modded -m Deniland"

D:\LoginDetails.ps1 $Server $verifySignatures $EnableVON $EnableBattleye $Headless_Clients $Enable3rdPerson $Password $MissionFolder $ClientMods $ServerMods $OptionalMods
