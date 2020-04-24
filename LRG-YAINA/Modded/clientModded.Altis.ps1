#Server Parameters
$Server = 1				# Which Server to use. Can be 1, 2, 3, 4, 5														DEFAULT: 3
$Clear_Logs = 1			# If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		DEFAULT: 1
$Copy_Keys = 1			# If set to 1 all available keys will be copied to directory. 									DEFAULT: 0

#Mission Parameters
$Password = ''								#Password used by clients to connect to the server.
$MissionFolder = 'YAINA_Modded.Altis'		#Exact name of mission folder e.g. MyMission.Altis
$Headless_Clients = 0										#Number if Headless Clients to boot on the server. 			DEFAULT: 1

$ClientMods = 'C:\Mods\@3CB BAF Equipment;C:\Mods\@3CB BAF Units;C:\Mods\@3CB BAF Units (ACE Compatibility);C:\Mods\@3CB BAF Vehicles;C:\Mods\@3CB BAF Weapons;C:\Mods\@ace;C:\Mods\@CBA_A3;C:\Mods\@LRG Fundamentals;C:\Mods\@RKSL Studios- Attachments v3.01;C:\Mods\@task_force_radio'
$ServerMods = 'C:\Mods\@a3graphite;C:\Mods\@A3Log;C:\Mods\@Achilles;C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Towing;C:\Mods\@Advanced Urban Rappelling;C:\Mods\@asct;C:\Mods\@CBA_A3;C:\Mods\@infiSTAR_A3;C:\Mods\@infiSTAR_A3_vision EU1;C:\Mods\@inidbi2;C:\Mods\@Server side smoke (for Blastcore Edited);C:\Mods\@yaina_Modded'

#set-location -path 'C:\Servers\Arma 3\YAINA'
#git fetch
#git pull
#pause
#Start-Process -NoNewWindow -Wait -Filepath "bin\yaina.bat" -ArgumentList "generate -a -v Modded"


D:\LoginDetails.ps1 $Server $Clear_Logs $Copy_Keys $Password $MissionFolder $Headless_Clients $ClientMods $ServerMods


