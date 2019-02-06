
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ;

	
F11::Run powershell.exe -executionpolicy bypass "gta.ps1 'solosession'"
F12::Run powershell.exe -executionpolicy bypass "gta.ps1 'killgtasession'"
