<#
.SYNOPSIS
	Plays folk music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays folk music.
.EXAMPLE
	PS> ./play-folk-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Real_Country_96.5_KBDN"
exit 0 # success
