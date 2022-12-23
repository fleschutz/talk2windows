<#
.SYNOPSIS
	Plays rock music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays rock music.
.EXAMPLE
	PS> ./play-rock-music
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Oh yeah!"
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/RADIO_BOB_BOBs_Alternative"
exit 0 # success
