<#
.SYNOPSIS
	Opens Google Gemini
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Gemini
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://gemini.google.com/app"
