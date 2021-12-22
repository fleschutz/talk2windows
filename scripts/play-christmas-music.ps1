<#
.SYNOPSIS
	Plays Christmas Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays Christmas music.
.EXAMPLE
	PS> ./play-christmas-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Happy_Christmas_radio"
exit 0 # success
