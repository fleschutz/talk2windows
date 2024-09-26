<#
.SYNOPSIS
	Replies to "What's wrong?"
.DESCRIPTION
	This PowerShell script replies to "What's wrong?" by text-to-speech (TTS).
#>

$reply = "Nothing wrong here." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
