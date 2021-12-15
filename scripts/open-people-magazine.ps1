<#
.SYNOPSIS
	Opens the People Magazine
.DESCRIPTION
	This script launches the Web browser with the People Magazine website.
.EXAMPLE
	PS> ./open-people-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://people.com"
exit 0 # success
