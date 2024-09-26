<#
.SYNOPSIS
	Closes Discord
.DESCRIPTION
	This PowerShell script closes the Discord application gracefully.
.EXAMPLE
	PS> ./close-discord
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im Discord.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, Discord isn't running."
	exit 1
}
exit 0 # success
