<#
.SYNOPSIS
	Replies to "Where are you?"
.DESCRIPTION
	This PowerShell script replies to 'Where are you?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./where-are-you
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "I'm in the machine."
exit 0 # success
