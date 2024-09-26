<#
.SYNOPSIS
	Opens Google Sky
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Sky.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/sky/"
