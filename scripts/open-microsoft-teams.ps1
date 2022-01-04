<#
.SYNOPSIS
	Launches the Microsoft Teams app
.DESCRIPTION
	This PowerShell script launches the Microsoft Teams application.
.EXAMPLE
	PS> ./open-microsoft-teams
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process msteams:
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
