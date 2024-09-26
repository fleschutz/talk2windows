<#
.SYNOPSIS
	Replies to "That's perfect"
.DESCRIPTION
	This PowerShell script replies to 'That's perfect' by text-to-speech (TTS).
#>

$reply = "Thank you.","Glad to help." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
