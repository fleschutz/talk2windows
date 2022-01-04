<#
.SYNOPSIS
	Launches the Spotify app
.DESCRIPTION
	This PowerShell script launches the Spotify application.
.EXAMPLE
	PS> ./open-spotify
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process spotify:
exit 0 # success
