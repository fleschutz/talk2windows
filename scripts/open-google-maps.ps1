<#
.SYNOPSIS
	Opens Google Maps
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps.
.EXAMPLE
	PS> ./open-google-maps
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Maps..."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps"
exit 0 # success
