<#
.SYNOPSIS
	Opens Printables
.DESCRIPTION
	This PowerShell script launches the Web browser with Printables.com
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.printables.com"
& "$PSScriptRoot/say.ps1" "Here's Printables."
