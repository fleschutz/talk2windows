<#
.SYNOPSIS
	Replies to "What's the time?" 
.DESCRIPTION
	This PowerShell script speaks the current time by text-to-speech (TTS).
#>

try {
	[system.threading.thread]::currentThread.currentCulture = [system.globalization.cultureInfo]"en-US"
	$CurrentTime = (Get-Date).ToShortTimeString()

	& "$PSScriptRoot/say.ps1" "It's $CurrentTime."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
