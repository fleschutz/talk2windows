<#
.SYNOPSIS
	Shows planet Pluto in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows planet Pluto in Google Maps.
.EXAMPLE
	PS> ./show-planet-pluto
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/space/pluto"
exit 0 # success
