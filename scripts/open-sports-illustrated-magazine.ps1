<#
.SYNOPSIS
	Opens the Sports Illustrated Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Sports Illustrated magazine website.
.EXAMPLE
	PS> ./open-sports-illustrated-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.si.com/"
exit 0 # success
