<#
.SYNOPSIS
	Shows the weather radar
.DESCRIPTION
	This PowerShell script launches the Web browser with Windy.com showing the current weather radar.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.windy.com/-Weather-radar-radar"
