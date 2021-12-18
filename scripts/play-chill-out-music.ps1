<#
.SYNOPSIS
	Plays chillout music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays chillout music.
.EXAMPLE
	PS> ./play-chill-out-music
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/202.FM_The_ChillOut_Lounge"
exit 0 # success
