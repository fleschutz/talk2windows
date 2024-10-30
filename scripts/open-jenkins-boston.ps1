<#
.SYNOPSIS
	Opens Jenkins Boston
.DESCRIPTION
	This PowerShell script launches the Web browser with Jenkins Boston.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://rocket:8080"
