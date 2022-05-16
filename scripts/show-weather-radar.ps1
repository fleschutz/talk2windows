<#
.SYNOPSIS
	Shows the weather radar
.DESCRIPTION
	This PowerShell script launches the Web browser with Windy.com showing the current weather radar.
.EXAMPLE
	PS> ./show-weather-radar
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.windy.com/-Weather-radar-radar"
exit 0 # success
