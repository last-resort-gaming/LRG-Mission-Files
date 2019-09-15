echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Plan Patriota.cfg

set enable_headless_client=1
set hc_password=ManHunt

set Clear_Logs=1
set enable_BEC=1
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@3CB BAF Weapons (ACE compatibility);^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@CBA_A3;^
C:\Mods\@Colombian Armed Forces EJC;^
C:\Mods\@CUP Terrains - Core;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Diwako's Punish unknown weapon;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@Lingor-Dingor Island;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSUSAF;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@task_force_radio;^
C:\Mods\@3CB BAF Equipment;^
C:\Mods\@3CB BAF Units;^
C:\Mods\@3CB BAF Units (ACE compatibility);^
C:\Mods\@3CB BAF Vehicles;^
C:\Mods\@3CB BAF Weapons;^
C:\Mods\@3CB BAF Units (RHS compatibility);^
C:\Mods\@3CB BAF Vehicles (Servicing extension);^
C:\Mods\@3CB BAF Vehicles (RHS reskins);^
C:\Mods\@3CB BAF Weapons (RHS ammo compatibility);^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@F-A-181E Black Wasp II;

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"