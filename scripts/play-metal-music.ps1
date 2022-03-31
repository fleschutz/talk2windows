<#
.SYNOPSIS
	Plays metal music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays metal music.
.EXAMPLE
	PS> ./play-metal-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Power_Rock_93.9_WKTG"
exit 0 # success
