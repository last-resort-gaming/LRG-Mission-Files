echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Mother Bear.cfg

set enable_headless_client=1
set hc_password=SameAsLastWeek
set Clear_Logs=1
set enable_BEC=0
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@AV-8B Harrier 2;^
C:\Mods\@BackpackOnChest;^
C:\Mods\@BTHBC Terrains Core - Objects and Shared Definitions;^
C:\Mods\@CBA_A3;^
C:\Mods\@CUP Terrains - Core;^
C:\Mods\@CUP Terrains - CWA;^
C:\Mods\@CUP Terrains - Maps;^
C:\Mods\@CUP Units;^
C:\Mods\@CUP Vehicles;^
C:\Mods\@CUP Weapons;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@Krasnorus;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@RKSL Studios- Attachments v3.01;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@task_force_radio;^
C:\Mods\@3CB BAF Equipment;^
C:\Mods\@3CB BAF Units;^
C:\Mods\@3CB BAF Units (ACE compatibility);^
C:\Mods\@3CB BAF Vehicles;^
C:\Mods\@3CB BAF Weapons;^
C:\Mods\@ace;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@Diwako's Punish unknown weapon;^
C:\Mods\@3CB BAF Vehicles (Servicing extension)

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"