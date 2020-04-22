::Arma 3 Launch Configuator by MitchJC. Set all Params for each Server here. Batch files in all Arma 3 Servers call this file to boot.

:: Master Server Info
call "D:\Master Server Info.bat"

::Game Server Info
set Steam_App_ID=233780
set Game_Exe=arma3server_x64.exe
set Mod_Directory=C:\Mods

IF "%Server%"=="EU1" (
	set Directory=C:\Servers\Arma 3\EU1\Server Directory
	set Port=2302
	set Config_Path=C:\Servers\Arma 3\EU1\Configs\
	set Profile_Path=C:\Servers\Arma 3\EU1\Server Directory\Profiles
	set Keys=C:\Servers\Arma 3\EU1\Server Directory\Keys
)
IF "%Server%"=="EU2" (
	set Directory=C:\Servers\Arma 3\EU2\Server Directory
	set Port=2402
	set Config_Path=C:\Servers\Arma 3\EU2\Configs\
	set Profile_Path=C:\Servers\Arma 3\EU2\Server Directory\Profiles
	set Keys=C:\Servers\Arma 3\EU2\Server Directory\Keys
)
IF "%Server%"=="EU3" (
	set Directory=C:\Servers\Arma 3\EU3\Server Directory
	set Port=2502
	set Config_Path=C:\Servers\Arma 3\EU3\Configs\
	set Profile_Path=C:\Servers\Arma 3\EU3\Server Directory\Profiles
	set Keys=C:\Servers\Arma 3\EU3\Server Directory\Keys
)
IF "%Server%"=="EU4" (
	set Directory=C:\Servers\Arma 3\EU4\Server Directory
	set Port=2602
	set Config_Path=C:\Servers\Arma 3\EU4\Configs\
	set Profile_Path=C:\Servers\Arma 3\EU4\Server Directory\Profiles
	set Keys=C:\Servers\Arma 3\EU4\Server Directory\Keys
)

IF "%Server%"=="EU5" (
	set Directory=C:\Servers\Arma 3\EU5\Server Directory
	set Port=2702
	set Config_Path=C:\Servers\Arma 3\EU5\Configs\
	set Profile_Path=C:\Servers\Arma 3\EU5\Server Directory\Profiles
	set Keys=C:\Servers\Arma 3\EU5\Server Directory\Keys
)


IF %AllKeys% GTR 0 (
:: Replace the Keys
del "%Keys%\*.bikey" /f /q
cd "%Mod_Directory%"
for /r %%a in (*.bikey) do (COPY "%%a" "%Keys%\%%~nxa")
xcopy /s "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\Keys\a3.bikey" "%Keys%"
)

:: Check for Updates
cd "%path_to_steamcmd%"
steamcmd.exe +login "%steamcmd_username%" "%steamcmd_Password%" +force_install_dir "%Directory%" +app_update %Steam_App_ID% +quit

:: Delete Log Files
if %Clear_Logs% GTR 0 (
del "%Profile_Path%\*.log" /f /q
del "%Profile_Path%\*.mdmp" /f /q
del "%Profile_Path%\*.bidmp" /f /q
del "%Profile_Path%\*.RPT" /f /q
)

:: Boot the Server
cd "%Directory%"
start /min "" %Game_exe% ^
	-profiles="%Profile_Path%" ^
	-port=%Port% ^
	-name=LRGServer ^
	"-config=%Config_Path%%Server_Config%" ^
	-autoinit ^
	"-ServerMod=%server_mod_list%" ^
	"-Mod=%mod_list%"
	

:: Boot the Headless Client
if %enable_headless_client% GTR 0 (
timeout /t 30
cd "%Directory%"
start /min "" %Game_exe% ^
	-profiles="%Profile_Path%" ^
	-client ^
	-connect=127.0.0.1 ^
	-port=%Port% ^
	-password=%hc_password% ^
	"-Mod=%mod_list%"
)

:: Boot Battleye Extended Controls
if %enable_BEC% GTR 0 (
start /min "" "%Profile_Path%\BattlEye\Launch BEC.lnk"
)