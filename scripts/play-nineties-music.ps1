<#
.SYNOPSIS
	Plays 90s music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays 90s music.
.EXAMPLE
	PS> ./play-nineties-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/181.fm_Star_90s"
exit 0 # success
