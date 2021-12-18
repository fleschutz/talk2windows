<#
.SYNOPSIS
	Replies to "You can talk?"
.DESCRIPTION
	This PowerShell script replies to 'You can talk?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./you-can-talk
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Sure, just begin any sentence with 'Windows'."
exit 0 # success
