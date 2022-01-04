<#
.SYNOPSIS
	Launches the Microsoft Weather app
.DESCRIPTION
	This PowerShell script launches the Microsoft Weather application.
.EXAMPLE
	PS> ./open-microsoft-weather
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process msnweather:
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
