<#
.SYNOPSIS
	Plays country music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays country music.
.EXAMPLE
	PS> ./play-country-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/HPR1_The_Classic_Country_Channel"
exit 0 # success
