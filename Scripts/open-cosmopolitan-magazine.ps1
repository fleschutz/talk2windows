<#
.SYNOPSIS
	Opens the Cosmopolitan Magazine
.DESCRIPTION
	This script launches the Web browser with the Cosmopolitan Magazine website.
.EXAMPLE
	PS> ./open-cosmopolitan-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.cosmopolitan.com/"
exit 0 # success
