<#
.SYNOPSIS
	Opens Google Stadia
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Stadia.
.EXAMPLE
	PS> ./open-google-stadia
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Stadia..."
& "$PSScriptRoot/open-browser.ps1" "https://stadia.google.com"
exit 0 # success
