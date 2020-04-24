#Server Parameters
$Server = 3				# (1,2,3,4,5) 	DEFAULT: 3	Which Server to use. 														
$Clear_Logs = 1			# (0,1) 		DEFAULT: 1	If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		
$verifySignatures = 0	# (0,1)			DEFAULT: 0	Check the client has the same mods loaded as the server. Enable for public servers.			
$EnableVON = 0			# (0,1)			DEFAULT: 0	Enable in game VON channels (Side chat, command chat ect). Enable for non TFAR servers.		
$EnableBattleye = 0		# (0,1)			DEFAULT: 0	Enabled Battleye anti-cheat. Should always be on for public servers, optional on Ops.			
$Headless_Clients = 1	# (0,1)			DEFAULT: 1	Number of Headless Clients to boot on the server. 											
$Enable3rdPerson  = 0	# (0,1)			DEFAULT: 0	Usually disabled on Ops, enabled on public server.											

#Mission Parameters
$Password = 'DownInTheWoods'			#Password used by clients to connect to the server.
$MissionFolder = 'Helfa_Arth_I.vt7'		#Exact name of mission folder e.g. MyMission.Altis

$ClientMods = 'C:\Mods\@LAMBS_Danger.fsm;C:\Mods\@LRG Fundamentals;C:\Mods\@NATO_Rus_Vehicle;C:\Mods\@Project Infinite - All in one;C:\Mods\@Project Infinite compat ACE3;C:\Mods\@Radio Animations for Task Force Radio;C:\Mods\@RHSUSAF;C:\Mods\@RUSSOF_LITE_mas;C:\Mods\@ShackTac User Interface;C:\Mods\@Suppress;C:\Mods\@task_force_radio;C:\Mods\@Virolahti - Valtatie 7;C:\Mods\@ace;C:\Mods\@ACE Compat - RHS United States Armed Forces;C:\Mods\@ACE Interaction Menu Expansion;C:\Mods\@ACEX;C:\Mods\@CBA_A3;C:\Mods\@CTab Blufor Tracker v2.2.3;C:\Mods\@CUP Terrains - Core;C:\Mods\@Enhanced Movement;C:\Mods\@FA-18 Super Hornet;C:\Mods\@Finnish Defense Forces uniforms;C:\Mods\@FIR AWS(AirWeaponSystem);C:\Mods\@Hellenic Armed Forces Mod (HAFM) - Helicopters;C:\Mods\@ILBE Assault Pack - Rewrite;C:\Mods\@KA Suitcase Nuke'
$ServerMods = 'C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling;C:\Mods\@infiSTAR_A3_vision EU3;C:\Mods\@A3Log'

D:\LoginDetails.ps1 $Server $Clear_Logs $verifySignatures $EnableVON $EnableBattleye $Headless_Clients $Enable3rdPerson $Password $MissionFolder $ClientMods $ServerMods