echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Big Brother.cfg

set enable_headless_client=1
set hc_password=FinalEffort

set Clear_Logs=1
set enable_BEC=1
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE3 - BWMod Compatibility;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@Beketov;^
C:\Mods\@Bundeswehr Kleiderkammer (PBW);^
C:\Mods\@BWMod;^
C:\Mods\@CBA_A3;^
C:\Mods\@CUP ACE3 Compatibility Addon - Vehicles;^
C:\Mods\@CUP Terrains - Core;^
C:\Mods\@CUP Vehicles;^
C:\Mods\@CUP Weapons;^
C:\Mods\@CUP Units;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Diwako's Punish unknown weapon;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@Eurofighter Typhoon AWS;^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@GERSOF_LITE_mas;^
C:\Mods\@Hellenic Armed Forces Mod (HAFM) - Helicopters;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@Redd'n'Tank Vehicles;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSUSAF;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@task_force_radio

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"