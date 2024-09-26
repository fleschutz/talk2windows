<#
.SYNOPSIS
	Replies to "Where are you?"
.DESCRIPTION
	This PowerShell script replies to 'Where are you?' by text-to-speech (TTS).
#>

$reply = "I'm here.","Right beside you.","At your side.","Next to you." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
