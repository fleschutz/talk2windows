<#
.SYNOPSIS
	Opens the GliderTracker website
.DESCRIPTION
	This PowerShell script launches the Web browser with the GliderTracker website.
.EXAMPLE
	PS> ./open-glider-tracker-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://glidertracker.de/"
exit 0 # success
