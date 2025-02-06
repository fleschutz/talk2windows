<#
.SYNOPSIS
	Replies to "How are you?"
.DESCRIPTION
	This PowerShell script replies to "How are you?" by text-to-speech (TTS).
#>

$reply = "Fine. And you?", "I'm good. And you?", "I'm all right. Thanks.", "Fine, how are you?", "Pretty good. And you?", "Good, thanks, and you?", "Fine, thanks. How are you?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
