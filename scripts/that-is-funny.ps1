<#
.SYNOPSIS
	Replies to "That's funny."
.DESCRIPTION
	This PowerShell script replies to 'That's funny.' by text-to-speech (TTS).
#>

$reply = "Oh yeah.","Right." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
