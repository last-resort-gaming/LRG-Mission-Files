echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Fallen Ally.cfg

set enable_headless_client=1
set hc_password=NowOrNever
set Clear_Logs=1
set enable_BEC=0
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@Specialist Military Arms (SMA) Version 2.7.1;^
C:\Mods\@task_force_radio;^
C:\Mods\@3CB Factions;^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@ACE Compat - RHS- GREF;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@CBA_A3;^
C:\Mods\@CLA CLAFGHAN;^
C:\Mods\@CUP Terrains - Core;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@ILBE Assault Pack - Rewrite;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSGREF;^
C:\Mods\@RHSUSAF;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@Slovenian Armed Forces

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@infiSTAR_A3_vision EU3;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"