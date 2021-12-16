<#
.SYNOPSIS
	Shows the A320 cockpit
.DESCRIPTION
	This script launches the Web browser with the A320DP.com website.
.EXAMPLE
	PS> ./show-a320-cockpit
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://www.a320dp.com/A320_DP/panels.html"
exit 0 # success
