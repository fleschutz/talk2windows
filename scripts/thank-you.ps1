<#
.SYNOPSIS
	Replies to 'thank you'
.DESCRIPTION
	This PowerShell script replies to 'thank you' by text-to-speech (TTS).
#>

$reply = "You're welcome.", "No worries.", "Don't mention it.", "My pleasure.", "Pleasure is mine.", "Glad to help.", "Anytime." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
