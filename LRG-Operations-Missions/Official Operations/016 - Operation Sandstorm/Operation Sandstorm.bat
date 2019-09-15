echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: EU3 Log Clearing
start "" "C:\Servers\Arma 3\EU3\Server Directory\Clear Up Logs (EU3).bat"

call "E:\Master Server Info.bat"

:: Set Server Paths
set path_to_server_directory="C:\Servers\Arma 3\EU3\Server Directory"
set path_to_server_profiles="C:\Servers\Arma 3\EU3\Server Directory\Profiles"
set Server_Config=C:\Servers\Arma 3\EU3\Configs\Operation Sandstorm.cfg

:: Configure basic server Params
set port_number=2502
:: Mods if required
set mod_list=^
Mods\@ace;^
Mods\@ACE Compat - RHS United States Armed Forces;^
Mods\@ACE Interaction Menu Expansion;^
Mods\@ACEX;^
Mods\@CBA_A3;^
Mods\@CUP ACE3 Compatibility Addon - Vehicles;^
Mods\@CUP ACE3 Compatibility Addon - Weapons;^
Mods\@CUP Terrains - Core;^
Mods\@CUP Units;^
Mods\@CUP Vehicles;^
Mods\@CUP Terrains - Maps;^
Mods\@CUP Weapons;^
Mods\@Diwako's ACE Ragdolling;^
Mods\@Enhanced Movement;^
Mods\@Kidal;^
Mods\@LRG Fundamentals;^
Mods\@RHSUSAF;^
Mods\@ShackTac User Interface;^
Mods\@task_force_radio;^
Mods\@Radio Animations for Task Force Radio;^
Mods\@Santa Claus

:: Server Mods if required	
set server_mod_list=^
Mods\@Advanced Rappelling;^
Mods\@Advanced Sling Loading;^
Mods\@Advanced Urban Rappelling;^
@A3Log

:: Configure Headless Client Params
set enable_headless_client=1
set hc_password=LRGTraining

:: -------------------------------------------------
:: Advanced Editing Below - Proceed at your own risk!
:: --------------------------------------------------

cd %path_to_steamcmd%
steamcmd.exe +login %steamcmd_username% %steamcmd_Password% +force_install_dir %path_to_server_directory% +app_update 233780 +quit

cd %path_to_server_directory%
start /min "" "arma3server_x64.exe" ^
	-profiles=%path_to_server_profiles% ^
	-port=%port_number% ^
	-name=Server ^
	"-config=%Server_Config%" ^
	-autoinit ^
	"-Mod=%mod_list%" ^
	"-ServerMod=%server_mod_list%"

if %enable_headless_client% GTR 0 (
cd %path_to_server_directory%
start /min "" "arma3server_x64.exe" ^
	-profiles=%path_to_server_profiles% ^
	-client ^
	-connect=127.0.0.1 ^
	-port=%port_number% ^
	-password=%hc_password% ^
	"-Mod=%mod_list%"
)



