<#
.SYNOPSIS
	Plays pop music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays pop music.
.EXAMPLE
	PS> ./play-pop-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Nick_Radio"
exit 0 # success
