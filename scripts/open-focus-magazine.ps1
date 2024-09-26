<#
.SYNOPSIS
	Opens the Focus Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the German Focus magazine website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.focus.de"
