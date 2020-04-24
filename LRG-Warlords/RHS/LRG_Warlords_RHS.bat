echo off
TITLE Last Resort Gaming - Arma 3 - Boot Sequence
COLOR 0A
mode con:cols=80 lines=10

:: Server Config
set Server=EU2
set Server_Config=LRG_Warlords_RHS.cfg

set enable_headless_client=0
set hc_password=

set Clear_Logs=1
set enable_BEC=1
set AllKeys=0


::Client & Server Mods
set mod_list=^
C:\Mods\@CBA_A3;^
@LRG Fundamentals;^
C:\Mods\@RHSAFRF;^
C:\Mods\@RHSGREF;^
C:\Mods\@RHSUSAF

::Server ONLY Mods
set server_mod_list=C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling

del "C:\Servers\Arma 3\EU2\Server Directory\Keys\*.bikey" /f /q
cd "C:\Mods"
::Arma 3 Key - Always copy this badboy over!
xcopy /s /y "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\Keys\a3.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"

::Required Mods
xcopy /s /y "@CBA_A3\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@LRG Fundamentals\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@RHSAFRF\key\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@RHSGREF\key\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@RHSUSAF\key\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"

::Optional Mods
xcopy /s /y "@Blastcore Edited (standalone version)\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@DynaSound 2\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@Enhanced Movement\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@Enhanced Soundscape\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@JSRS SOUNDMOD\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@Radio Animations for Task Force Radio\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@ShackTac User Interface\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"
xcopy /s /y "@Achilles\keys\*.bikey" "C:\Servers\Arma 3\EU2\Server Directory\Keys"


:: Call MitchJC's Awesome Launch Configurator
call "C:\Servers\Arma 3\Global\Arma 3 Launch Configurator.bat"
