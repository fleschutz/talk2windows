<#
.SYNOPSIS
	Replies to "You are great"
.DESCRIPTION
	This PowerShell script replies to "You are great" by text-to-speech (TTS).
#>

$reply = "Thanks.","I know." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
