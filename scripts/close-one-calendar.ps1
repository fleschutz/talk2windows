<#
.SYNOPSIS
	Closes the OneCalendar app 
.DESCRIPTION
	This PowerShell script closes the OneCalendar application gracefully.
.EXAMPLE
	PS> ./close-one-calendar
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /f /im CalendarApp.Gui.Win10.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/_reply.ps1" "Sorry, OneCalendar isn't running."
	exit 1
}
exit 0 # success
