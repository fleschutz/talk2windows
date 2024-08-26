<#
.SYNOPSIS
	Opens Google Stadia
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Stadia.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://stadia.google.com"
exit 0 # success
