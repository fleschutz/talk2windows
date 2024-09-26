<#
.SYNOPSIS
	Determines the week number 
.DESCRIPTION
	This PowerShell script determines and speaks the current week number by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-week
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$WeekNo = (get-date -UFormat %V)
	& "$PSScriptRoot/say.ps1" "It's week #$WeekNo."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
