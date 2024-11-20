<#
.SYNOPSIS
	Replies to: 'Are you ready?'
.DESCRIPTION
	This PowerShell script replies to 'Are you ready?' by text-to-speech (TTS).
#>

$reply = "Always.","Sure as hell.","Ready when you are!","I was born ready." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
