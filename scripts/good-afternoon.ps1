<#
.SYNOPSIS
	Replies to 'good afternoon'
.DESCRIPTION
	This PowerShell script replies to 'good afternoon' by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-afternoon
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Good afternoon! How can I help?"
exit 0 # success
