<#
.SYNOPSIS
	Opens the Outdoor Active website 
.DESCRIPTION
	This PowerShell script launches the Web browser with the Outdoor Active website.
.EXAMPLE
	PS> ./open-outdoor-active-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.outdooractive.com"
exit 0 # success
