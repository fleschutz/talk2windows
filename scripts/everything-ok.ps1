<#
.SYNOPSIS
	Replies to "Everything OK?"
.DESCRIPTION
	This PowerShell script replies to 'Everything OK?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./everything-ok.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "I'm fine, thanks."
exit 0 # success
