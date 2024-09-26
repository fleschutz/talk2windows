<#
.SYNOPSIS
	Speaks the current day 
.DESCRIPTION
	This PowerShell script speaks the current day by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-day
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$Weekday = (Get-Date -format "dddd")

	& "$PSScriptRoot/say.ps1" "Today is $Weekday."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
