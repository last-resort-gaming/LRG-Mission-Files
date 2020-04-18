echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Sandstorm.cfg

set enable_headless_client=1
set hc_password=BrexitMeansBrexit
set Clear_Logs=0
set enable_BEC=0
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@CBA_A3;^
C:\Mods\@Ace;^
C:\Mods\@3CB BAF Units (RHS compatibility);^
C:\Mods\@3CB BAF Vehicles;^
C:\Mods\@3CB BAF Vehicles (RHS reskins);^
C:\Mods\@3CB BAF Vehicles (Servicing extension);^
C:\Mods\@3CB BAF Weapons;^
C:\Mods\@3CB BAF Weapons (RHS ammo compatibility);^
C:\Mods\@3CB Factions;^
C:\Mods\@A-10 Warthog;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@ACE Compat - RHS- GREF;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@ACEX;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@FA-18 Super Hornet;^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@ILBE Assault Pack - Rewrite;^
C:\Mods\@LAMBS_Danger.fsm;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSGREF;^
C:\Mods\@RHSUSAF;^
C:\Mods\@RKSL Studios- Attachments v3.01;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@task_force_radio;^
C:\Mods\@3CB BAF Equipment;^
C:\Mods\@3CB BAF Units;^
C:\Mods\@3CB BAF Units (ACE compatibility)

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@infiSTAR_A3_vision EU3;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"