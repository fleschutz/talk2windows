<#
.SYNOPSIS
	Closes OBS Studio
.DESCRIPTION
	This PowerShell script closes the OBS Studio application gracefully.
.EXAMPLE
	PS> ./close-obs-studio
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im obs64.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/_reply.ps1" "Sorry, OBS Studio isn't running"
	exit 1
}
exit 0 # success
