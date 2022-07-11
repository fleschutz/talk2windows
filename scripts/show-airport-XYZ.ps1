<#
.SYNOPSIS
	Shows airport details
.DESCRIPTION
	This PowerShell script launches the Web browser showing the given airport.
.EXAMPLE
	PS> ./show-airport KLUF
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$Airport = "")

try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	& "$PSScriptRoot/open-browser.ps1" "https://metar-taf.com/airport/$Airport"
	exit 0 # success
} catch {
	Reply "Sorry: $($Error[0])"
	exit 1
}