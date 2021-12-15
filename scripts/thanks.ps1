<#
.SYNOPSIS
	Replies to 'thanks'
.DESCRIPTION
	This script replies to 'thanks' by text-to-speech (TTS).
.EXAMPLE
	PS> ./thanks
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "You're welcome.", "You're very welcome.", "That's all right.", "No problem.", "No worries.", "Don't mention it.", "It's my pleasure.", "My pleasure.", "Pleasure is mine.", "Glad to help.", "Anytime." | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
