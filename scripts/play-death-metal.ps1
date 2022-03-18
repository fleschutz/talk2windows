<#
.SYNOPSIS
	Plays death metal music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays death metal music.
.EXAMPLE
	PS> ./play-death-metal
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.radio.net/s/radiobobdeathmetal"
exit 0 # success
