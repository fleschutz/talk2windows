<#
.SYNOPSIS
	Opens Google Drawings
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Drawings.
.EXAMPLE
	PS> ./open-google-drawings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com/drawings"
exit 0 # success
