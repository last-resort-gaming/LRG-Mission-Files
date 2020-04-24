#Server Parameters
$Server = 4				# Which Server to use. Can be 1, 2, 3, 4, 5														DEFAULT: 3
$Clear_Logs = 1			# If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		DEFAULT: 1
$Copy_Keys = 0			# If set to 1 all available keys will be copied to directory. 									DEFAULT: 0

#Mission Parameters
$Password = 'LRGTraining'								#Password used by clients to connect to the server.
$MissionFolder = 'Pilot_Training.Altis'						#Exact name of mission folder e.g. MyMission.Altis
$Headless_Clients = 0									#Number if Headless Clients to boot on the server. 				DEFAULT: 1

$ClientMods = 'C:\Mods\@task_force_radio;C:\Mods\@ace;C:\Mods\@ACEX;C:\Mods\@CBA_A3;C:\Mods\@LRG Fundamentals'
$ServerMods = 'C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling'

D:\LoginDetails.ps1 $Server $Clear_Logs $Copy_Keys $Password $MissionFolder $Headless_Clients $ClientMods $ServerMods

