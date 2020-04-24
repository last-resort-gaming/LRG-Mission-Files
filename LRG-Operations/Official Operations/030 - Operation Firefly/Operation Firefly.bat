echo off
chcp 1252
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Firefly.cfg

set enable_headless_client=1
set hc_password=ChristmasCameEarly
set Clear_Logs=1
set enable_BEC=0
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@CBA_A3;^
C:\Mods\@Suppress;^
C:\Mods\@task_force_radio;^
C:\Mods\@USS Nimitz;^
C:\Mods\@USSOC_LITE_mas;^
C:\Mods\@VME PLA;^
C:\Mods\@ace;^
C:\Mods\@RHSUSAF;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@ACEX;^
C:\Mods\@ADV - ACE CPR;^
C:\Mods\@Advanced Urban Rappelling;^C:\Mods\@infiSTAR_A3_vision EU3;^
C:\Mods\@BDF parachutes vanilla;^
C:\Mods\@Boeing-SOAR MH-47E Chinook;^
C:\Mods\@Diwako's ACE Ragdolling;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@FA-18 Super Hornet;^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@FIR Pilot^&Crew Pack;^
C:\Mods\@ILBE Assault Pack - Rewrite;^
C:\Mods\@kerama Islands;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@ShackTac User Interface

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@infiSTAR_A3_vision EU3;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"