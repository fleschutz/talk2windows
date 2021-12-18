<#
.SYNOPSIS
	Replies to "I'm back"
.DESCRIPTION
	This PowerShell script replies to 'I'm back' by text-to-speech (TTS).
.EXAMPLE
	PS> ./i-am-back
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Glad to hear you."
exit 0 # success
