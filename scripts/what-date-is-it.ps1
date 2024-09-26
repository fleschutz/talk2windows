<#
.SYNOPSIS
	Replies to 'What date is it?'
.DESCRIPTION
	This PowerShell script replies to 'What date is it?' by text-to-speech (TTS).
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$Weekday = (Get-Date -format "dddd")
	$CurrentDate = (Get-Date).ToShortDateString()

	& "$PSScriptRoot/say.ps1" "It's $Weekday, $CurrentDate."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
