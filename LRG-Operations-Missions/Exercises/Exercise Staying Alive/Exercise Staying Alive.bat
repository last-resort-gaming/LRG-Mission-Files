echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

call "E:\Master Server Info.bat"

:: Set Server Paths
set path_to_server_directory="C:\Servers\Arma 3\EU3\Server Directory"
set path_to_server_profiles="C:\Servers\Arma 3\EU3\Server Directory\Profiles"
set Server_Config=C:\Servers\Arma 3\EU3\Configs\Exercise Staying Alive.cfg

:: Configure basic server Params
set port_number=2502
:: Mods (if required)
set mod_list=^
C:\Mods\@RKSL Studios- Watchkeeper WK450 Tactical UAV;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@task_force_radio;^
C:\Mods\@3CB BAF Equipment;^
C:\Mods\@3CB BAF Units;^
C:\Mods\@3CB BAF Units (ACE compatibility);^
C:\Mods\@3CB BAF Vehicles;^
C:\Mods\@3CB BAF Vehicles (RHS reskins);^
C:\Mods\@3CB BAF Vehicles (Servicing extension);^
C:\Mods\@3CB BAF Weapons;^
C:\Mods\@3CB BAF Weapons (ACE compatibility);^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@BackpackOnChest;^
C:\Mods\@CBA_A3;^
C:\Mods\@CUP ACE3 Compatibility Addon - Vehicles;^
C:\Mods\@CUP ACE3 Compatibility Addon - Weapons;^
::C:\Mods\@CUP Terrains - Core;^
C:\Mods\@CUP Units;^
C:\Mods\@CUP Vehicles;^
C:\Mods\@CUP Weapons;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@F-A-181E Black Wasp II;^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@RHSUSAF;^
C:\Mods\@Diwako's Punish unknown weapon;^
C:\Mods\@LRG CBA Settings
:: Server Mods (if required)	
set server_mod_list=^
Mods\@Advanced Rappelling;^
Mods\@Advanced Sling Loading;^
Mods\@Advanced Urban Rappelling;^
@A3Log

:: Configure Headless Client Params
set enable_headless_client=1
set hc_password=Ahhahaha

:: -------------------------------------------------
:: Keys madness!
:: --------------------------------------------------
del "C:\Servers\Arma 3\EU3\Server Directory\Keys\*.bikey" /f /q
cd "C:\Mods"
for /r %%a in (*.bikey) do (COPY "%%a" "C:\Servers\Arma 3\EU3\Server Directory\Keys\%%~nxa")

:: -------------------------------------------------
:: Advanced Editing Below - Proceed at your own risk!
:: --------------------------------------------------

cd %path_to_steamcmd%
steamcmd.exe +login %steamcmd_username% %steamcmd_Password% +force_install_dir %path_to_server_directory% +app_update 233780 +quit

cd %path_to_server_directory%
start /min "" "arma3server_x64.exe" ^
	-profiles=%path_to_server_profiles% ^
	-port=%port_number% ^
	-name=LRGServer ^
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



