<#
.SYNOPSIS
	Opens the OpenStreetMap website
.DESCRIPTION
	This PowerShell script launches the Web browser with the OpenStreetMap website.
.EXAMPLE
	PS> ./open-street-map
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.openstreetmap.org"
exit 0 # success
