<#
.SYNOPSIS
	Checks the time of zenith 
.DESCRIPTION
	This PowerShell script queries the time of zenith and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-zenith
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Reply = (Invoke-WebRequest http://wttr.in/?format="Zenith is at %z." -UserAgent "curl" -useBasicParsing).Content
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
