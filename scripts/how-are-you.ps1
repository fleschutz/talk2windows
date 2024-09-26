<#
.SYNOPSIS
	Replies to "How are you?"
.DESCRIPTION
	This PowerShell script replies to "How are you?" by text-to-speech (TTS).
#>

$reply = "I'm fine. How are you?", "Great, thank you. How are you?", "Good, thanks, and you?", "Fine, thanks. How are you?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
