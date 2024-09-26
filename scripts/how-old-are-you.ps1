<#
.SYNOPSIS
	Replies to "How old are you?"
.DESCRIPTION
	This PowerShell script replies to 'How old are you?' by text-to-speech (TTS).
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$OSDetails = Get-CimInstance Win32_OperatingSystem
	$installDate = $OSDetails.InstallDate
	$days = ([DateTime]::Now - $installDate).Days
	& "$PSScriptRoot/say.ps1" "I was installed on $($installDate.ToShortDateString()), so I'm $days days old."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
