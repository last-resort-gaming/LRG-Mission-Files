echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation_Jungle_Fever.cfg

set enable_headless_client=1
set hc_password=WoodForTrees

set Clear_Logs=1
set enable_BEC=1
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@ILBE Assault Pack (TFAR);^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@Prei Khmaoch Luong;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSGREF;^
C:\Mods\@RHSUSAF;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@task_force_radio;^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@ACE Compat - RHS- GREF;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@CBA_A3;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Diwako's Punish unknown weapon;^
C:\Mods\@Enhanced Movement

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@LRG CBA Ops Settings;^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"