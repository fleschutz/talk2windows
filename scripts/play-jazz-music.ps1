<#
.SYNOPSIS
	Plays jazz music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays jazz music.
.EXAMPLE
	PS> ./play-jazz-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/KLEB"
exit 0 # success
