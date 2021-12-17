<#
.SYNOPSIS
	Replies to "You can talk?"
.DESCRIPTION
	This script replies to 'You can talk?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./you-can-talk
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Sure, just begin any sentence with 'Windows'."
exit 0 # success
