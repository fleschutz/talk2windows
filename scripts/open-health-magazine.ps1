<#
.SYNOPSIS
	Opens the Health Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Health Magazine website.
.EXAMPLE
	PS> ./open-health-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.health.com/"
exit 0 # success
