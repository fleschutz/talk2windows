<#
.SYNOPSIS
	Opens an egg timer
.DESCRIPTION
	This PowerShell script launches the Web browser with the eggtimer website.
.EXAMPLE
	PS> ./open-egg-timer
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://e.ggtimer.com"
exit 0 # success
