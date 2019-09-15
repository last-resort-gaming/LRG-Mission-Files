echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Zimmer.cfg

set enable_headless_client=1
set hc_password=LeaveYouBehind

set Clear_Logs=1
set enable_BEC=1
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@3CB Factions;^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Compat - RHS- GREF;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@African Factions for CUP;^
C:\Mods\@CBA_A3;^
C:\Mods\@CUP Terrains - Core;^
C:\Mods\@CUP Units;^
C:\Mods\@CUP Vehicles;^
C:\Mods\@CUP Weapons;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@ILBE Assault Pack (TFAR);^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@G.O.S Dariyah;^
C:\Mods\@NATO_Rus_Weapons;^
C:\Mods\@Project OPFOR;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSGREF;^
C:\Mods\@RHSUSAF;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@task_force_radio;^
C:\Mods\@ussocom_mas;

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@LRG CBA Ops Settings;^
@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"