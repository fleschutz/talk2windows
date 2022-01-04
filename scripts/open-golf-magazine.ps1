<#
.SYNOPSIS
	Opens the Golf Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Golf Magazine website.
.EXAMPLE
	PS> ./open-golf-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://golf.com/"
exit 0 # success
