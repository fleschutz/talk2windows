<#
.SYNOPSIS
	Opens the Time Magazin website
.DESCRIPTION
	This script launches the Web browser with the Time Magazin website.
.EXAMPLE
	PS> ./open-time-magazin
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://time.com"
exit 0 # success
