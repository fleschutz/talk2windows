<#
.SYNOPSIS
	Replies to "How old are you?"
.DESCRIPTION
	This PowerShell script replies to 'How old are you?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-old-are-you
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$OSDetails = Get-CimInstance Win32_OperatingSystem
	$InstallDate = $OSDetails.InstallDate
	$Now = [DateTime]::Now
	$Days = ($Now - $InstallDate).Days
	& "$PSScriptRoot/_reply.ps1" "I'm $Days days old, I was installed on this machine on $($InstallDate.ToShortDateString())."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}