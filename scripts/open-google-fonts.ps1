<#
.SYNOPSIS
	Opens Google Fonts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Fonts.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://fonts.google.com"
