<#
.SYNOPSIS
	Replies to "How do you read me?"
.DESCRIPTION
	This PowerShell script replies to 'How do you read me?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-do-you-read-me
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Read you loud and clear."
exit 0 # success
