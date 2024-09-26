<#
.SYNOPSIS
	Replies to "You are right"
.DESCRIPTION
	This PowerShell script replies to "You are right" by text-to-speech (TTS).
#>

$reply = "Thanks.","I know." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
