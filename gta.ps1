#Requires -RunAsAdministrator
###
# Manage GTA5 to disable and restart GTA5 for missions and suspend GTA5 to create solo public session
# @author xleeuwx <info@xleeuwx.nl>
###

## Gta executeble
$gtaPath="C:\Games\GTA\PlayGTAV.exe"

## Installation directory and execution directory
$workdir="C:\tmp"

###
### DO NOT EDIT BELOW THIS LINE
###

# suspend gta and sleep and reactivate gta
function soloSession() {
	suspendGTA
	Start-Sleep -s 11 
	reactivateGTA
}

# Stop network and stop gta, restart network and restart gta
function killGtaSession() {
	deactivateNetwork
	Start-Sleep -s 2
	stopGTA
	enableNetwork
	Start-Sleep -s 4
	startGTA
}

function installSuspend() {
	if(!(Test-Path "$workdir\PSTools.zip"))
	{
		Write-Output "PSTools doesn't exist"
		downloadSuspend
		Get-ChildItem "$workdir\" -Filter PSTools.zip | Expand-Archive -DestinationPath "$workdir\PSTools" -Force
	} 
}

function downloadSuspend() {
	$url = "https://download.sysinternals.com/files/PSTools.zip"
	$output = "$workdir\PSTools.zip"
	$start_time = Get-Date
	Invoke-WebRequest -Uri $url -OutFile $output
}

function deactivateNetwork() {
	write-output 'Disable network - start'
	Disable-NetAdapter -Name "Ether*" -Confirm:$false
	Disable-NetAdapter -Name "Wi*" -Confirm:$false
	write-output 'Disable network - done'
}

function enableNetwork() {
	write-output 'start network - start'
	Enable-NetAdapter -Name "Ether*" -Confirm:$false
	Enable-NetAdapter -Name "Wi*" -Confirm:$false
	write-output 'start network - done'
}

function stopGTA() {
	write-output 'stop gta process - start'
	
	try { Stop-Process -Name "gta5"}
	catch { write-output "process gta5 already stopped" }
	
	Start-Sleep -s 3
	
	try { Stop-Process -Name "GTAVLauncher"}
	catch { write-output "process GTAVLauncher already stopped" }
	
	write-output 'stop gta process - done'
}

function startGTA() {
	write-output 'start gta process - start'
	Start-Process -FilePath $gtaPath
	write-output 'start gta process - done'
}

function suspendGTA() {
	write-output 'suspend gta - start'
	&"$workdir\PSTools\pssuspend.exe" "gta5"
	write-output 'suspend gta - done'
}

function reactivateGTA() {
	write-output 'reactivate gta - start'
	&"$workdir\PSTools\pssuspend.exe" -r "gta5"
	write-output 'reactivate gta - done'
}

if(!$args[0]) {
	write-output 'please provide a action'
	write-output 'valid main actions: soloSession, killGtaSession'
	exit
}

$action = $args[0]
write-output 'Run Action:'
installSuspend
&"$action"
