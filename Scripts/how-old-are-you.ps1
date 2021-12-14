<#
.SYNOPSIS
	Replies to "How old are you?"
.DESCRIPTION
	This script replies to 'How old are you?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-old-are-you
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$OSDetails = Get-CimInstance Win32_OperatingSystem
	$InstallDate = $OSDetails.InstallDate
	$Now = [DateTime]::Now
	$Days = ($Now - $InstallDate).Days
	& "$PSScriptRoot/give-reply.ps1" "I was installed on this machine $Days days ago."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}