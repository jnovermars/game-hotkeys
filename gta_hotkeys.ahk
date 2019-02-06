
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ;

!F11::
RunWait powershell.exe -executionpolicy bypass "gta.ps1 'solosession'", , Min
IfWinExist, Grand Theft Auto V
    WinActivate 
return
	
!F12::
RunWait powershell.exe -executionpolicy bypass "gta.ps1 'killgtasession'", , Min
return 
