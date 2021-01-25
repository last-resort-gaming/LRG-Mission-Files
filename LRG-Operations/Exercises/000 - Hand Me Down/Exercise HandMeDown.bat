echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

C:\steamcmd\steamcmd.exe +login 82ndLastResort 1LRG82Bananas +force_install_dir "C:\Servers\Arma 3\EU3\Server Directory" +app_update 233780 +quit

start "" "C:\Servers\Arma 3\EU3\Server Directory\Clear Up Logs (EU3).bat"
echo Cleaning Logs...
timeout /t 5 /nobreak

start /min "" "C:\Servers\Arma 3\EU3\Server Directory\arma3server_x64.exe" ^
	-profiles="C:\Servers\Arma 3\EU3\Server Directory\Profiles" ^
	-port=2502 ^
	-name=LRGServer ^
	"-config=C:\Servers\Arma 3\EU3\Configs\Exercise HandMeDown.cfg" ^
	-autoinit ^
	-noLogs ^
	-enableHT ^
	-bandwidthAlg=2 ^
	"-Mod=Mods\@3CB BAF Equipment;Mods\@3CB BAF Units;Mods\@3CB BAF Units (ACE compatibility);Mods\@3CB BAF Units (RHS compatibility);Mods\@3CB BAF Vehicles;Mods\@3CB BAF Vehicles (RHS reskins);Mods\@3CB BAF Vehicles (Servicing extension);Mods\@3CB BAF Weapons;Mods\@3CB BAF Weapons (ACE compatibility);Mods\@ace;Mods\@ACE Compat - RHS United States Armed Forces;Mods\@ACE Interaction Menu Expansion;Mods\@ACEX;Mods\@BackpackOnChest;Mods\@CBA_A3;Mods\@CUP Terrains - Core;Mods\@CUP Units;Mods\@CUP Vehicles;Mods\@CUP Weapons;Mods\@Enhanced Movement;Mods\@LRG Fundamentals;Mods\@RHSUSAF;Mods\@task_force_radio;" "-ServerMod=Mods\@Advanced Sling Loading;Mods\@Advanced Urban Rappelling;Mods\@Advanced Rappelling;@A3Log"
	
echo EU3 now booting. Please Wait.
timeout /t 20 /nobreak

start /min "" "C:\Servers\Arma 3\EU3\Batch Files\Headless Client.bat"
start /min "" "C:\Servers\Arma 3\EU3\Batch Files\Headless Client.bat"
Exit