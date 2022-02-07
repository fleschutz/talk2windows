<#
.SYNOPSIS
	Opens the Zoom website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Zoom website.
.EXAMPLE
	PS> ./open-zoom-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://zoom.us/"
exit 0 # success
