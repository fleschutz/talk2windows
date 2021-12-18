<#
.SYNOPSIS
	Replies to "hold on"
.DESCRIPTION
	This PowerShell script replies to 'hold on' by text-to-speech (TTS).
.EXAMPLE
	PS> ./hold-on
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
exit 0 # success
