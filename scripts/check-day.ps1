<#
.SYNOPSIS
	Speaks the current day 
.DESCRIPTION
	This script speaks the current day by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-day
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture=[system.globalization.cultureinfo]"en-US"
	$Weekday = (Get-Date -format "dddd")

	& "$PSScriptRoot/give-reply.ps1" "Today is $Weekday."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
