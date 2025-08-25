<#
.SYNOPSIS
	Closes the OneCalendar app 
.DESCRIPTION
	This PowerShell script closes the OneCalendar application gracefully.
#>

TaskKill /f /im CalendarApp.Gui.Win10.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, OneCalendar isn't running."
}
