<#
.SYNOPSIS
	Replies to "Can you talk?"
.DESCRIPTION
	This script replies to 'Can you talk?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./can-you-talk
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Sure, why not."
exit 0 # success
