<#
.SYNOPSIS
	Closes the Microsoft Store app
.DESCRIPTION
	This PowerShell script closes the Microsoft Store application gracefully.
.EXAMPLE
	PS> ./close-microsoft-store
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im WinStore.App.exe /f /t
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/_reply.ps1" "Sorry, Microsoft Store isn't running."
	exit 1
}
exit 0 # success
