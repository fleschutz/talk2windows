<#
.SYNOPSIS
	Opens the Spotify website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Spotify website.
.EXAMPLE
	PS> ./open-spotify-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.spotify.com"
exit 0 # success
