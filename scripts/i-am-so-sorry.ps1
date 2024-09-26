<#
.SYNOPSIS
	Replies to "I'm so sorry"
.DESCRIPTION
	This PowerShell script replies to "I'm so sorry" by text-to-speech (TTS).
#>

$reply = "Never mind." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
