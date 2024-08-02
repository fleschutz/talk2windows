<#
.SYNOPSIS
	Replies to 'thank you'
.DESCRIPTION
	This PowerShell script replies to 'thank you' by text-to-speech (TTS).
#>

$reply = "You're welcome.", "No worries.", "Don't mention it.", "My pleasure.", "Pleasure is mine.", "Glad to help.", "Anytime." | Get-Random
& "$PSScriptRoot/_reply.ps1" $reply
exit 0 # success
