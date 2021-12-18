<#
.SYNOPSIS
	Plays hip hop music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays hip hop music.
.EXAMPLE
	PS> ./play-hip-hop-music
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/task2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/Lofi_Hip_Hop_Radio"
exit 0 # success
