<#
.SYNOPSIS
	Closes the Thunderbird app
.DESCRIPTION
	This PowerShell script closes the Mozilla Thunderbird email application gracefully.
.EXAMPLE
	PS> ./close-thunderbird
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im thunderbird.exe
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/_reply.ps1" "Sorry, Mozilla Thunderbird isn't running."
	exit 1
}
exit 0 # success
