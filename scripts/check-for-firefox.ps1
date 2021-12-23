<#
.SYNOPSIS
	Checks for Firefox 
.DESCRIPTION
	This PowerShell script checks if Firefox is installed and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-for-firefox
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& winget list "Mozilla Firefox"
	if ($lastExitCode -eq "0") {
		& "$PSScriptRoot/_reply.ps1" "Firefox is installed."
	} else {
		& "$PSScriptRoot/_reply.ps1" "Sorry, Firefox isn't installed yet."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
