#Get params from Mission Params and Master Info
param ($steamcmd_username, $steamcmd_Password, $Server, $Clear_Logs, $Copy_Keys, $Password, $MissionFolder, $Headless_Clients, $ClientMods, $ServerMods)

#Variables
$SteamDir = 'C:\steamcmd'
$ModDirectory = 'C:\Mods'
$MasterMissions = 'C:\LRG-Mission-Files'
$MasterConfig = 'C:\LRG-Mission-Files\Server_Files\MASTER SERVER CONFIG.cfg'
$MasterNetwork = 'C:\LRG-Mission-Files\Server_Files\Arma3.cfg'
$ServerModDir='C:\Mods'
$Arma3KeyDir='C:\Program Files (x86)\Steam\steamapps\common\Arma 3\Keys\a3.bikey'

If ($Server -eq 1) {
    $ServerDirectory='C:\Servers\Arma 3\1'
	$Serverport='2302'
	$ServerHostName='[LRG] Last Resort Gaming || EU 1 || Public Server'
}
If ($Server -eq 2) {
	$ServerDirectory='C:\Servers\Arma 3\2'
	$Serverport='2402'
	$ServerHostName='[LRG] Last Resort Gaming || EU 2 || Public Server'
}
If ($Server -eq 3) {
	$ServerDirectory='C:\Servers\Arma 3\3'
	$Serverport='2502'
	$ServerHostName='[LRG] Last Resort Gaming || EU 3 || Operations Server'
}
If ($Server -eq 4) {
	$ServerDirectory='C:\Servers\Arma 3\4'
	$Serverport='2602'
	$ServerHostName='[LRG] Last Resort Gaming || EU 4 || Training Server'
}
If ($Server -eq 5) {
	$ServerDirectory='C:\Servers\Arma 3\5'
	$Serverport='2702'
	$ServerHostName='[LRG] Last Resort Gaming || EU 5 || Public Event'
}

$ServerMissions=Join-Path -Path $ServerDirectory -ChildPath "\mpmissions"
$ServerPorfile=Join-Path -Path $ServerDirectory -ChildPath "\Profiles"
$ServerKeys=Join-Path -Path $ServerDirectory -ChildPath "\Keys"
$ServerConfig=Join-Path -Path $ServerDirectory -ChildPath '\ServerConfig.cfg'
$NetworkConfig=Join-Path -Path $ServerDirectory -ChildPath '\Profiles\Users\Administrator'

# Check for Updates
Start-Process -Filepath "C:\steamcmd\steamcmd.exe" -ArgumentList "+login `"$steamcmd_username`" `"$steamcmd_Password`" +force_install_dir `"$ServerDirectory`" +app_update 233780 -beta +quit"

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
if ($Clear_Logs -eq 1) {
	Remove-Item $ServerPorfile\*.log*
	Remove-Item $ServerPorfile\*.mdmp*
	Remove-Item $ServerPorfile\*.bidmp*
	Remove-Item $ServerPorfile\*.RPT*
}

#Server Config Setup
(get-content $MasterConfig).replace('PowershellPass', $Password) | Set-Content $ServerConfig
(get-content $ServerConfig).replace('PowershellMission', $MissionFolder) | Set-Content $ServerConfig
(get-content $ServerConfig).replace('PowershellHostname', $ServerHostName) | Set-Content $ServerConfig

#Move Network Config across, just in case removed during A3 Update
Copy-Item $MasterNetwork $NetworkConfig

#Deal with clearing old mission, pack new, and move.
Remove-Item $ServerMissions\*.pbo*
$MissionDir=Get-ChildItem $MasterMissions -attributes D -Recurse -include $MissionFolder
set-location "C:\Program Files (x86)\Mikero\DePboTools\bin" 
.\MakePbo.exe -P -B -G $MissionDir $ServerMissions

#Boot the Server
sleep -seconds 5
Start-Process -FilePath "$ServerDirectory\arma3server_x64.exe" -ArgumentList "-profiles=`"$ServerPorfile`" -port=$Serverport -name=LRGServer `"-config=$ServerConfig`" -autoinit `"-ServerMod=$ServerMods`" `"-Mod=$ClientMods`""

#Boot Headless Client/s
for ($i=1; $i -le $Headless_Clients; $i++)
{
	sleep -seconds 30
    Start-Process -FilePath "$ServerDirectory\arma3server_x64.exe" -ArgumentList "-profiles=`"$ServerPorfile`" -client -connect=127.0.0.1 -port=$Serverport -password=$Password `"-Mod=$ClientMods`""
}