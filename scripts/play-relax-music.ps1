<#
.SYNOPSIS
	Plays Relax Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays Relax music.
.EXAMPLE
	PS> ./play-relax-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Relaxation_Island"
exit 0 # success
