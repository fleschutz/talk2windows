<#
.SYNOPSIS
	Opens Google Mars
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Mars.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/mars/"
exit 0 # success
