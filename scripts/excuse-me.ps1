<#
.SYNOPSIS
	Replies to "Excuse me"
.DESCRIPTION
	This PowerShell script replies to 'Excuse me' by text-to-speech (TTS).
.EXAMPLE
	PS> ./excuse-me
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Sure."
exit 0 # success
