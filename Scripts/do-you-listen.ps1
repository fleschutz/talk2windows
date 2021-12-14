<#
.SYNOPSIS
	Replies to "Do you listen?"
.DESCRIPTION
	This script replies to 'Do you listen?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./do-you-listen
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Sure."
exit 0 # success
