<#
.SYNOPSIS
	Opens Google Photos
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Photos.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://photos.google.com"
exit 0 # success
