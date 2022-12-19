<#
.SYNOPSIS
	Launches the Clock app
.DESCRIPTION
	This PowerShell script launches the Clock application.
.EXAMPLE
	PS> ./open-clock
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
start-process ms-clock:
exit 0 # success
