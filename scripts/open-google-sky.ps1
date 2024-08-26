<#
.SYNOPSIS
	Opens Google Sky
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Sky.
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/sky/"
exit 0 # success
