<#
.SYNOPSIS
	Replies to "I'm sorry"
.DESCRIPTION
	This PowerShell script replies to "I'm sorry" by text-to-speech (TTS).
#>

$reply = "Never mind." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
