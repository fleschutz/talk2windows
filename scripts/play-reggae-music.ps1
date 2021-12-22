<#
.SYNOPSIS
	Plays Reggae Music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays Reggae music.
.EXAMPLE
	PS> ./play-reggae-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Radio_Reggae_Rasta"
exit 0 # success
