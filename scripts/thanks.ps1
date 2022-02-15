<#
.SYNOPSIS
	Replies to 'Thanks'
.DESCRIPTION
	This PowerShell script replies to 'Thanks' by text-to-speech (TTS).
.EXAMPLE
	PS> ./thanks
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "You're welcome.", "No worries.", "Don't mention it.", "My pleasure.", "Pleasure is mine.", "Glad to help.", "Anytime." | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
