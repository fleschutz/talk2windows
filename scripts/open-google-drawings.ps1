<#
.SYNOPSIS
	Opens Google Drawings
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Drawings.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com/drawings"
