<#
.SYNOPSIS
	Opens Google Charts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Charts.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://developers.google.com/chart" 
exit 0 # success
