<#
.SYNOPSIS
	Plays alternative rock music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays alternative rock music.
.EXAMPLE
	PS> ./play-alternative-rock-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/RADIO_BOB_BOBs_Alternative"
exit 0 # success
