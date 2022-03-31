<#
.SYNOPSIS
	Plays RnB music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays RnB music.
.EXAMPLE
	PS> ./play-rnb-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Biker_Valley_Radio_2"
exit 0 # success
