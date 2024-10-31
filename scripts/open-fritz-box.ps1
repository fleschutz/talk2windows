<#
.SYNOPSIS
	Opens the FRITZ!Box website
.DESCRIPTION
	This PowerShell script launches the Web browser with the FRITZ!Box website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://fritz.box"
