<#
.SYNOPSIS
	Replies to 'good evening'
.DESCRIPTION
	This PowerShell script replies to 'good evening' by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-evening
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Good evening! How can I help?"
exit 0 # success
