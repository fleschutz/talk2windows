<#
.SYNOPSIS
	Opens Google Earth
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Earth.
.EXAMPLE
	PS> ./open-google-earth
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Earth..."
& "$PSScriptRoot/open-browser.ps1" "https://earth.google.com/web/"
exit 0 # success
