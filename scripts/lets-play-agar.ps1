<#
.SYNOPSIS
	Play Agar.io
.DESCRIPTION
	This PowerShell script launches the Web browser with the Agar.io browser game.
#>

& "$PSScriptRoot/open-browser.ps1" "https://agar.io"
exit 0 # success
