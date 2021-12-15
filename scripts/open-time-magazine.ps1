<#
.SYNOPSIS
	Opens the Time Magazine
.DESCRIPTION
	This script launches the Web browser with the Time Magazine website.
.EXAMPLE
	PS> ./open-time-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://time.com"
exit 0 # success
