echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU3
set Server_Config=Operation Helfa Arth.cfg

set enable_headless_client=1
set hc_password=LRGTest
set Clear_Logs=0
set enable_BEC=0
set AllKeys=1
::Client & Server Mods
set mod_list=^
C:\Mods\@LAMBS_Danger.fsm;^
C:\Mods\@LRG Fundamentals;^
C:\Mods\@NATO_Rus_Vehicle;^
C:\Mods\@Project Infinite - All in one;^
C:\Mods\@Project Infinite compat ACE3;^
C:\Mods\@Radio Animations for Task Force Radio;^
C:\Mods\@RHSUSAF;^
C:\Mods\@RUSSOF_LITE_mas;^
C:\Mods\@ShackTac User Interface;^
C:\Mods\@Suppress;^
C:\Mods\@task_force_radio;^
C:\Mods\@Virolahti - Valtatie 7;^
C:\Mods\@ace;^
C:\Mods\@ACE Compat - RHS United States Armed Forces;^
C:\Mods\@ACE Interaction Menu Expansion;^
C:\Mods\@ACEX;^
C:\Mods\@CBA_A3;^
C:\Mods\@CTab Blufor Tracker v2.2.3;^
C:\Mods\@CUP Terrains - Core;^
C:\Mods\@Enhanced Movement;^
C:\Mods\@FA-18 Super Hornet;^
C:\Mods\@Finnish Defense Forces uniforms;^
C:\Mods\@FIR AWS(AirWeaponSystem);^
C:\Mods\@Hellenic Armed Forces Mod (HAFM) - Helicopters;^
C:\Mods\@ILBE Assault Pack - Rewrite;^
C:\Mods\@KA Suitcase Nuke;

::Server ONLY Mods
set server_mod_list=^
C:\Mods\@Advanced Rappelling;^
C:\Mods\@Advanced Sling Loading;^
C:\Mods\@Advanced Urban Rappelling;^
C:\Mods\@infiSTAR_A3_vision EU3;^
C:\Mods\@A3Log

:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"