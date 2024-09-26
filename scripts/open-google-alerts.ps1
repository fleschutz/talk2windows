<#
.SYNOPSIS
	Opens Google Alerts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Alerts.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/alerts"
