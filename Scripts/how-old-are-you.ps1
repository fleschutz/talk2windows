<#
.SYNOPSIS
	Replies to "How old are you?"
.DESCRIPTION
	This script replies to 'How old are you?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-old-are-you
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "I'm installed on this machine since 2 years and 3 months now."
exit 0 # success
