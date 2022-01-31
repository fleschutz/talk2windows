<#
.SYNOPSIS
	Plays 70s music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays 80s music.
.EXAMPLE
	PS> ./play-seventies-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/80s_By_The_Bay"
exit 0 # success
