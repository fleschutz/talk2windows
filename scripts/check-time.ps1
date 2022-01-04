<#
.SYNOPSIS
	Say the current time 
.DESCRIPTION
	This PowerShell script speaks the current time by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-time
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentThread.currentCulture=[system.globalization.cultureInfo]"en-US"
	$CurrentTime = (Get-Date).ToShortTimeString()

	& "$PSScriptRoot/_reply.ps1" "It's $CurrentTime."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
