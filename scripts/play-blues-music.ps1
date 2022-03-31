<#
.SYNOPSIS
	Plays blues music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays blues music.
.EXAMPLE
	PS> ./play-blues-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/American_Road_Radio"
exit 0 # success
