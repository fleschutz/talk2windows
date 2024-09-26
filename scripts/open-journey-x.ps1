<#
.SYNOPSIS
	Opens Journyx
.DESCRIPTION
	This PowerShell script launches the Web browser with Journyx.
#>

& "$PSScriptRoot/say" "Just a moment."
& "$PSScriptRoot/open-browser.ps1" "https://ufainc.apps.journyx.com/"
