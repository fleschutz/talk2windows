<#
.SYNOPSIS
	Shows planet Venus in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows planet Venus in Google Maps.
.EXAMPLE
	PS> ./show-planet-venus
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/space/venus"
exit 0 # success
