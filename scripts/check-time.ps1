<#
.SYNOPSIS
	Say the current time 
.DESCRIPTION
	This PowerShell script speaks the current time by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-time
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentThread.currentCulture=[system.globalization.cultureInfo]"en-US"
	$CurrentTime = (Get-Date).ToShortTimeString()

	& "$PSScriptRoot/give-reply.ps1" "It's $CurrentTime."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
