<#
.SYNOPSIS
	Opens windy.com
.DESCRIPTION
	This PowerShell script launches the Web browser with the windy.com website.
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.windy.com/-Weather-radar-radar"
& "$PSScriptRoot/_reply.ps1" "Your weather."
exit 0 # success
