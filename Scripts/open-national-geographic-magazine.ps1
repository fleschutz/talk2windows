<#
.SYNOPSIS
	Opens the National Geographic Magazine
.DESCRIPTION
	This script launches the Web browser with the National Geographic Magazine website.
.EXAMPLE
	PS> ./open-national-geographic-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.nationalgeographic.com/"
exit 0 # success
