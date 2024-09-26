<#
.SYNOPSIS
	Opens Google Photos
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Photos.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://photos.google.com"
