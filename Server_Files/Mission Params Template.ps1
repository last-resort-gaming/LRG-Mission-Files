#Server Parameters
$Server = 3				# Which Server to use. Can be 1, 2, 3, 4, 5														DEFAULT: 3
$Clear_Logs = 1			# If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		DEFAULT: 1
$Copy_Keys = 0			# If set to 1 all available keys will be copied to directory. 									DEFAULT: 0

#Mission Parameters
$Password = 'Password123'								#Password used by clients to connect to the server.
$MissionFolder = 'MyMission.Altis'						#Exact name of mission folder e.g. MyMission.Altis
$Headless_Clients = 1									#Number if Headless Clients to boot on the server. 				DEFAULT: 1

$ClientMods = 'C:\Mods\@LAMBS_Danger.fsm;C:\Mods\@LRG Fundamentals;C:\Mods\@NATO_Rus_Vehicle;C:\Mods\@Project Infinite - All in one;C:\Mods\@Project Infinite compat ACE3;C:\Mods\@Radio Animations for Task Force Radio;C:\Mods\@RHSUSAF;C:\Mods\@RUSSOF_LITE_mas;C:\Mods\@ShackTac User Interface;C:\Mods\@Suppress;C:\Mods\@task_force_radio;C:\Mods\@Virolahti - Valtatie 7;C:\Mods\@ace;C:\Mods\@ACE Compat - RHS United States Armed Forces;C:\Mods\@ACE Interaction Menu Expansion;C:\Mods\@ACEX;C:\Mods\@CBA_A3;C:\Mods\@CTab Blufor Tracker v2.2.3;C:\Mods\@CUP Terrains - Core;C:\Mods\@Enhanced Movement;C:\Mods\@FA-18 Super Hornet;C:\Mods\@Finnish Defense Forces uniforms;C:\Mods\@FIR AWS(AirWeaponSystem);C:\Mods\@Hellenic Armed Forces Mod (HAFM) - Helicopters;C:\Mods\@ILBE Assault Pack - Rewrite;C:\Mods\@KA Suitcase Nuke'
$ServerMods = 'C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling;C:\Mods\@infiSTAR_A3_vision EU3;C:\Mods\@A3Log'

D:\LoginDetails.ps1 $Server $Clear_Logs $Copy_Keys $Password $MissionFolder $Headless_Clients $ClientMods $ServerMods