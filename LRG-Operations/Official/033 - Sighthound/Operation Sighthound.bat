echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Sighthound.cfg

set enable_headless_client=1
set hc_password=BlackhawkDown
set Clear_Logs=0
set enable_BEC=0
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@CBA_A3;^
C:\Mods\@ace;^
C:\Mods\@RKSL Studios- Attachments v3.01;^
C:\Mods\@3CB BAF Equipment;^
C:\Mods\@3CB BAF Weapons;^
C:\Mods\@3CB BAF Vehicles;^
C:\Mods\@3CB BAF Units;^
C:\Mods\@RHSAFRF;^
C:\Mods\@ACEX;^
C:\Mods\@task_force_radio;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@3CB BAF Units (ACE compatibility);^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@BackpackOnChest;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@3CB BAF Vehicles (Servicing extension);^
C:\Mods\@Enhanced Movement;^
C:\Mods\@ACE Compat - RHS Armed Forces of the Russian Federation;^
C:\Mods\@Vinjesvingen;^
C:\Mods\@ILBE Assault Pack - Rewrite;^
C:\Mods\@LAMBS_Danger.fsm

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@infiSTAR_A3_vision EU3;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"