<#
.SYNOPSIS
	Replies to "I love you"
.DESCRIPTION
	This PowerShell script replies to 'I love you' by text-to-speech (TTS).
#>

$reply = "I'm so happy.", "I love it when you say things like that.", "Thank you for loving me." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
