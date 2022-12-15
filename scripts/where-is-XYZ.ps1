<#
.SYNOPSIS
	Shows a location
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at the given location.
.EXAMPLE
	PS> ./where-is-XYZ Boston
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$Location = "")

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/$Location"
exit 0 # success
