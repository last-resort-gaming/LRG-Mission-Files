echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Snow Drift.cfg

set enable_headless_client=1
set hc_password=PolarPandemonium

set Clear_Logs=1
set enable_BEC=1
set AllKeys=1
::Client & Server Mods
set mod_list=^
Mods\@3CB BAF Vehicles;^
Mods\@3CB BAF Vehicles (RHS reskins);^
Mods\@3CB BAF Vehicles (Servicing extension);^
Mods\@3CB BAF Weapons;^
Mods\@ace;^
Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
Mods\@ACE Compat - RHS- GREF;^
Mods\@ACE Compat - RHS United States Armed Forces;^
Mods\@ACE Interaction Menu Expansion;^
Mods\@ADV - ACE CPR;^
Mods\@CBA_A3;^
Mods\@ACEX;^
Mods\@CUP Terrains - Core;^
Mods\@CUP Terrains - Maps;^
Mods\@Diwako's ACE Ragdolling;^
Mods\@Diwako's Punish unknown weapon;^
Mods\@Enhanced Movement;^
Mods\@F-A-181E Black Wasp II;^
Mods\@Radio Animations for Task Force Radio;^
Mods\@RHSAFRF;^
Mods\@RHSGREF;^
Mods\@RHSUSAF;^
Mods\@ShackTac User Interface;^
Mods\@task_force_radio;^
Mods\@3CB BAF Equipment;^
Mods\@3CB BAF Units;^
Mods\@3CB BAF Units (ACE compatibility);^
Mods\@3CB BAF Weapons (ACE compatibility);^
Mods\@RHSSAF;^
Mods\@3CB BAF Units (RHS compatibility);^
Mods\@LRG Fundamentals

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@LRG CBA Ops Settings;^
@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"