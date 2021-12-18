<#
.SYNOPSIS
	Opens the Plex website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Plex website.
.EXAMPLE
	PS> ./open-plex-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.plex.tv/"
exit 0 # success
