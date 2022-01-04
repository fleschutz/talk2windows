<#
.SYNOPSIS
	Determines the exact OS version 
.DESCRIPTION
	This PowerShell script determines and says the exact operating system version by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-operating-system
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	if ($IsLinux) {
		$Reply = (uname -sr)
	} else {
		$OS = Get-WmiObject -class Win32_OperatingSystem
		$OSname = $OS.Caption
		$OSarchitecture = $OS.OSArchitecture
		$OSversion = $OS.Version
		$Reply = "$OSname for $OSarchitecture version $OSversion"
	} 
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
