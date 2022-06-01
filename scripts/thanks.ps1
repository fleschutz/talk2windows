<#
.SYNOPSIS
	Replies to 'thanks'
.DESCRIPTION
	This PowerShell script replies to 'thanks' by text-to-speech (TTS).
.EXAMPLE
	PS> ./thanks
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

$Reply = "You're welcome.", "No worries.", "Don't mention it.", "My pleasure.", "Pleasure is mine.", "Glad to help.", "Anytime." | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
