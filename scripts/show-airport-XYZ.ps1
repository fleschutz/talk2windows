<#
.SYNOPSIS
	Shows airport details
.DESCRIPTION
	This PowerShell script launches the Web browser showing the given airport.
#>

param([string]$Airport = "")

try {
	& "$PSScriptRoot/say.ps1" "OK."
	& "$PSScriptRoot/open-browser.ps1" "https://metar-taf.com/airport/$Airport"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
