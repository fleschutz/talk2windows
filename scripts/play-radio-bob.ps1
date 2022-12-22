<#
.SYNOPSIS
	Plays radio BOB!
.DESCRIPTION
	This PowerShell script launches the Web browser and plays radio BOB!
.EXAMPLE
	PS> ./play-radio-bob
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/RADIO_BOB_BOBs_Alternative"
exit 0 # success
