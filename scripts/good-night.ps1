<#
.SYNOPSIS
	Replies to 'Good night'
.DESCRIPTION
	This PowerShell script replies to 'Good night' by text-to-speech (TTS).
#>

$reply = "Good night to you too.", "Have a good night.", "Good night and sweet dreams." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
