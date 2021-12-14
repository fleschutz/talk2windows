<#
.SYNOPSIS
	Replies to "Are you here?"
.DESCRIPTION
	This script replies to 'Are you here?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./are-you-here
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Sure."
exit 0 # success
