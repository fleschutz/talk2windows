<#
.SYNOPSIS
	Shows Boston city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Boston city (USA).
.EXAMPLE
	PS> ./show-boston-city
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Boston"
exit 0 # success
