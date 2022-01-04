<#
.SYNOPSIS
	Say the current date 
.DESCRIPTION
	This PowerShell script speaks the current date by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-date
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
