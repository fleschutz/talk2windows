<#
.SYNOPSIS
	Plays House Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays house music.
.EXAMPLE
	PS> ./play-house-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/NYC_House_Radio"
exit 0 # success
