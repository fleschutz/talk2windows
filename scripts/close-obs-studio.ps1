<#
.SYNOPSIS
	Closes OBS Studio
.DESCRIPTION
	This PowerShell script closes the OBS Studio application gracefully.
#>

TaskKill /im obs64.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, OBS Studio isn't running"
	exit 1
}
exit 0 # success
