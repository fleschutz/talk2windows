<#
.SYNOPSIS
	Plays jazz music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays jazz music.
.EXAMPLE
	PS> ./play-jazz-music
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/KLEB"
exit 0 # success
