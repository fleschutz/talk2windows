<#
.SYNOPSIS
	Opens Google Mars
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Mars.
.EXAMPLE
	PS> ./open-google-mars
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/mars/"
exit 0 # success
