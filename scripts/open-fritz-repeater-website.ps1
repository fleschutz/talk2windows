<#
.SYNOPSIS
	Opens the FRITZ!Repeater website
.DESCRIPTION
	This PowerShell script launches the Web browser with the FRITZ!Repeater website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://fritz.repeater"
