<#
.SYNOPSIS
	Opens Google Earth
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Earth.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://earth.google.com/web/"
exit 0 # success
