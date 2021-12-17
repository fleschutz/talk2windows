<#
.SYNOPSIS
	Opens the Health Magazine
.DESCRIPTION
	This script launches the Web browser with the Health Magazine website.
.EXAMPLE
	PS> ./open-health-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://www.health.com/"
exit 0 # success
