<#
.SYNOPSIS
	Shows earthquakes 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the latest earthquakes.
.EXAMPLE
	PS> ./show-earthquakes.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://earthquake.usgs.gov/earthquakes/map/?extent=-86.07947,-169.80469&extent=86.07947,301.28906"
exit 0 # success
