<#
.SYNOPSIS
	Launches the Bing Maps app
.DESCRIPTION
	This PowerShell script launches the Bing Maps application.
.EXAMPLE
	PS> ./open-bing-maps
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

start-process bingmaps:
exit 0 # success
