#Server Parameters
$Server = 3				# (1,2,3) 		DEFAULT: 2	1 Public, 2 Private, 3 Testing/Spare.													

$verifySignatures = 0	# (0,1)			DEFAULT: 0	Check the client has the same mods loaded as the server. Enable for public servers.			
$EnableVON = 0			# (0,1)			DEFAULT: 0	Enable in game VON channels (Side chat, command chat ect). Enable for non TFAR servers.		
$EnableBattleye = 0		# (0,1)			DEFAULT: 0	Enabled Battleye anti-cheat. Should always be on for public servers, optional on Ops.			
$Headless_Clients = 1	# (0,1)			DEFAULT: 1	Number of Headless Clients to boot on the server. 											
$Enable3rdPerson  = 0	# (0,1)			DEFAULT: 0	Usually disabled on Ops, enabled on public server.											

#Mission Parameters
$Password = 'Password123'						#Password used by clients to connect to the server.
$MissionFolder = 'MyMission.Altis'				#Exact name of mission folder e.g. MyMission.Altis

$ClientMods = 'C:\Mods\@Mod1;C:\Mods\@Mod2;C:\Mods\@Mod3;C:\Mods\@Mod4'
$ServerMods = 'C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling'
$OptionalMods = 'C:\Mods\@Achilles;C:\Mods\@BackpackOnChest;C:\Mods\@Blastcore Edited (standalone version);C:\Mods\@CBA_A3;C:\Mods\@DynaSound 2;C:\Mods\@Enhanced Movement;C:\Mods\@Enhanced Soundscape;C:\Mods\@JSRS SOUNDMOD;C:\Mods\@ShackTac User Interface;C:\Mods\@ZEC - Zeus and Eden Templates - Building Compositions;C:\Mods\@ZEI - Zeus and Eden Interiors;C:\Mods\@Zeus Enhanced'

D:\LoginDetails.ps1 $Server $verifySignatures $EnableVON $EnableBattleye $Headless_Clients $Enable3rdPerson $Password $MissionFolder $ClientMods $ServerMods $OptionalMods