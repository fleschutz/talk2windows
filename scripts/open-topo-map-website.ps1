<#
.SYNOPSIS
	Opens the OpenTopoMap website
.DESCRIPTION
	This PowerShell script launches the Web browser with the OpenTopoMap website.
.EXAMPLE
	PS> ./open-topo-map-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://opentopomap.org"
exit 0 # success
