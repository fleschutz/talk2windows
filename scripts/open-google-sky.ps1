<#
.SYNOPSIS
	Opens Google Sky
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Sky.
.EXAMPLE
	PS> ./open-google-sky
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/sky/"
exit 0 # success
