<#
.SYNOPSIS
	Plays 80s music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays 80s music.
.EXAMPLE
	PS> ./play-eighties-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/The_Big_80s_Station_2"
exit 0 # success
