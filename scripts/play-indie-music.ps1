<#
.SYNOPSIS
	Plays indie music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays indie music.
.EXAMPLE
	PS> ./play-indie-music
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Prog_Rock"
exit 0 # success
