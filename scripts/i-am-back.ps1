<#
.SYNOPSIS
	Replies to "I'm back"
.DESCRIPTION
	This PowerShell script replies to 'I'm back' by text-to-speech (TTS).
.EXAMPLE
	PS> ./i-am-back.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Glad to hear you", "I'm so glad to hear you.", "Wow, that was fast." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
