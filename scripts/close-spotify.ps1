<#
.SYNOPSIS
	Closes the Spotify app
.DESCRIPTION
	This PowerShell script closes the Spotify application gracefully.
.EXAMPLE
	PS> ./close-spotify
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/close-program.ps1" "Spotify" "spotify" ""
exit 0 # success
