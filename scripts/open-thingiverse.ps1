<#
.SYNOPSIS
	Opens Thingiverse
.DESCRIPTION
	This PowerShell script launches the Web browser with Thingiverse.com
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.thingiverse.com/"
& "$PSScriptRoot/say.ps1" "Here's Thingiverse."
