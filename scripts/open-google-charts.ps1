<#
.SYNOPSIS
	Opens Google Charts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Charts.
.EXAMPLE
	PS> ./open-google-charts
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://developers.google.com/chart" 
exit 0 # success
