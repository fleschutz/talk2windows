<#
.SYNOPSIS
	Replies to "I'm back"
.DESCRIPTION
	This PowerShell script replies to 'I'm back' by text-to-speech (TTS).
#>

$reply = "Welcome back.", "Glad to hear you", "Wow, that was fast." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
