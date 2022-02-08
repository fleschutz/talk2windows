<#
.SYNOPSIS
	Checks the Git version
.DESCRIPTION
	This PowerShell script checks the Git version and answers it by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-git-version
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Version = (git --version)
	& "$PSScriptRoot/_reply.ps1" "It's $Version"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
