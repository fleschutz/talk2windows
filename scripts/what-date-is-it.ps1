<#
.SYNOPSIS
	Replies to 'What date is it?'
.DESCRIPTION
	This PowerShell script replies to 'What date is it?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-date-is-it
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$Weekday = (Get-Date -format "dddd")
	$CurrentDate = (Get-Date).ToShortDateString()

	& "$PSScriptRoot/_reply.ps1" "It's $Weekday, $CurrentDate."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
