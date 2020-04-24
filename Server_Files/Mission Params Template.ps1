#Server Parameters
$Server = 3				# (1,2,3,4,5) 	DEFAULT: 3	Which Server to use. 														
$Clear_Logs = 1			# (0,1) 		DEFAULT: 1	If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		
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

D:\LoginDetails.ps1 $Server $Clear_Logs $verifySignatures $EnableVON $EnableBattleye $Headless_Clients $Enable3rdPerson $Password $MissionFolder $ClientMods $ServerMods