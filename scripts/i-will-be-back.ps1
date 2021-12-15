<#
.SYNOPSIS
	Replies to 'I'll be back'
.DESCRIPTION
	This script replies to "I'll be back" by text-to-speech (TTS).
.EXAMPLE
	PS> ./i-will-be-back
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/give-reply.ps1" "Hasta la vista, baby."
exit 0 # success
