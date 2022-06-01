<#
.SYNOPSIS
	Replies to 'thank you'
.DESCRIPTION
	This PowerShell script replies to 'thank you' by text-to-speech (TTS).
.EXAMPLE
	PS> ./thank-you
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

$Reply = "You're welcome.", "No worries.", "Don't mention it.", "My pleasure.", "Pleasure is mine.", "Glad to help.", "Anytime." | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
