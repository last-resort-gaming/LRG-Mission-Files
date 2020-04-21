#Server Parameters
$Server = 3				# Which Server to use. Can be 1, 2, 3, 4, 5														DEFAULT: 3
$Clear_Logs = 1			# If set to 1 will clear all previous server logs. Should be enabled unless fault finding. 		DEFAULT: 1
$Copy_Keys = 0			# If set to 1 all available keys will be copied to directory. 									DEFAULT: 0

#Mission Parameters
$Password = 'DownInTheWoods'								#Password used by clients to connect to the server.
$MissionFolder = 'Operation_Helfa_Arth_Mission_1.vt7'		#Exact name of mission folder e.g. MyMission.Altis
$Headless_Clients = 1										#Number if Headless Clients to boot on the server. 					DEFAULT: 1

$ClientMods = 'C:\Mods\@LAMBS_Danger.fsm;C:\Mods\@LRG Fundamentals;C:\Mods\@NATO_Rus_Vehicle;C:\Mods\@Project Infinite - All in one;C:\Mods\@Project Infinite compat ACE3;C:\Mods\@Radio Animations for Task Force Radio;C:\Mods\@RHSUSAF;C:\Mods\@RUSSOF_LITE_mas;C:\Mods\@ShackTac User Interface;C:\Mods\@Suppress;C:\Mods\@task_force_radio;C:\Mods\@Virolahti - Valtatie 7;C:\Mods\@ace;C:\Mods\@ACE Compat - RHS United States Armed Forces;C:\Mods\@ACE Interaction Menu Expansion;C:\Mods\@ACEX;C:\Mods\@CBA_A3;C:\Mods\@CTab Blufor Tracker v2.2.3;C:\Mods\@CUP Terrains - Core;C:\Mods\@Enhanced Movement;C:\Mods\@FA-18 Super Hornet;C:\Mods\@Finnish Defense Forces uniforms;C:\Mods\@FIR AWS(AirWeaponSystem);C:\Mods\@Hellenic Armed Forces Mod (HAFM) - Helicopters;C:\Mods\@ILBE Assault Pack - Rewrite;C:\Mods\@KA Suitcase Nuke'
$ServerMods = 'C:\Mods\@Advanced Rappelling;C:\Mods\@Advanced Sling Loading;C:\Mods\@Advanced Urban Rappelling;C:\Mods\@infiSTAR_A3_vision EU3;C:\Mods\@A3Log'


#/////////////////////////////////////////////////////////////////////////////////
#All below to exported into dedicated file and called, above to be included inside every mission folder.

#Variables
$ModDirectory = 'C:\Mods'
$MasterMissions = 'C:\Servers\Arma 3\LRG-Mission-Files'
$MasterConfig = 'C:\Servers\Arma 3\LRG-Mission-Files\Server Creation FIles\MASTER SERVER CONFIG.cfg'

If ($Server -eq 1) {
    $ServerDirectory='C:\Servers\Arma 3\EU1\Server Directory'
	$Serverport='2302' 
}
If ($Server -eq 2) {
	$ServerDirectory='C:\Servers\Arma 3\EU2\Server Directory'
	$Serverport='2402'
}
If ($Server -eq 3) {
	$ServerDirectory='C:\Servers\Arma 3\EU3\Server Directory'
	$Serverport='2502'
}
If ($Server -eq 4) {
	$ServerDirectory='C:\Servers\Arma 3\EU4\Server Directory'
	$Serverport='2602'
}
If ($Server -eq 5) {
	$ServerDirectory='C:\Servers\Arma 3\EU5\Server Directory'
	$Serverport='2702'
}
$ServerModDir='C:\Mods'
$Arma3KeyDir='C:\Program Files (x86)\Steam\steamapps\common\Arma 3\Keys\a3.bikey'
$ServerMissions=Join-Path -Path $ServerDirectory -ChildPath "\mpmissions"
$ServerPorfile=Join-Path -Path $ServerDirectory -ChildPath "\Profiles"
$ServerKeys=Join-Path -Path $ServerDirectory -ChildPath "\Keys"
$ServerConfig=Join-Path -Path $ServerDirectory -ChildPath '\ServerConfig.cfg'

#Copy the Keys
Remove-Item $ServerKeys\*.bikey*
Copy-Item $Arma3KeyDir $ServerKeys
if ($Copy_Keys -eq 1) {
    Get-ChildItem -path $ServerModDir -Filter "*.bikey" -File -Recurse | Foreach {
         if ([System.IO.File]::Exists([System.IO.Path]::Combine($ServerKeys, $_.Name))) {
            $_.FullName + " already exists in destination folder." }
         else {
          Copy-Item $_.FullName $ServerKeys
         }
    }
}

#Clear the Logs
if ($Clear_Logs -eq 'Yes') {
	Remove-Item $ServerPorfile\*.log*
	Remove-Item $ServerPorfile\*.mdmp*
	Remove-Item $ServerPorfile\*.bidmp*
	Remove-Item $ServerPorfile\*.RPT*
}

#Server Config Setup
(get-content $MasterConfig).replace('PowershellPass', $Password) | Set-Content $ServerConfig
(get-content $ServerConfig).replace('PowershellMission', $MissionFolder) | Set-Content $ServerConfig

#Find the Mission directory, pack into pbo, move into selected server mpmissions folder.
$MissionDir=Get-ChildItem $MasterMissions -attributes D -Recurse -include $MissionFolder
set-location "C:\Program Files (x86)\Mikero\DePboTools\bin" 
.\MakePbo.exe -P -B -G $MissionDir $ServerMissions

#Boot the Server
Start-Process -FilePath "$ServerDirectory\arma3server_x64.exe" -ArgumentList "-profiles=`"$ServerPorfile`" -port=$Serverport -name=LRGServer `"-config=$ServerConfig`" -autoinit `"-ServerMod=$ServerMods`" `"-Mod=$ClientMods`""

#Boot Headless Client/s
for ($i=1; $i -le $Headless_Clients; $i++)
{
	sleep -seconds 30
    Start-Process -FilePath "$ServerDirectory\arma3server_x64.exe" -ArgumentList "-profiles=`"$ServerPorfile`" -client -connect=127.0.0.1 -port=$Serverport -password=$Password `"-Mod=$ClientMods`""
}