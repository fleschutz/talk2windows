<#
.SYNOPSIS
	Opens the Golf Magazine
.DESCRIPTION
	This script launches the Web browser with the Golf Magazine website.
.EXAMPLE
	PS> ./open-golf-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://golf.com/"
exit 0 # success
