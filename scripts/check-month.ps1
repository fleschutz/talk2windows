<#
.SYNOPSIS
	Say the current month name
.DESCRIPTION
	This PowerShell script speaks the current month name by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-month
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$MonthName = (Get-Date -UFormat %B)

	& "$PSScriptRoot/say.ps1" "It's $MonthName."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
