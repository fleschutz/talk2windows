<#
.SYNOPSIS
	Closes Serenade
.DESCRIPTION
	This PowerShell script closes the Serenade application gracefully.
.EXAMPLE
	PS> ./close-serenade
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Bye bye."
TaskKill /im Serenade.exe /f
exit 0 # success
