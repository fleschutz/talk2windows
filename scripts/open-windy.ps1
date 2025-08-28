<#
.SYNOPSIS
	Opens windy.com
.DESCRIPTION
	This PowerShell script launches the Web browser with windy.com weather radar page.
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.windy.com/-Weather-radar-radar"
& "$PSScriptRoot/say.ps1" "Here's Windy."
