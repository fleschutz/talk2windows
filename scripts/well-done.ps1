<#
.SYNOPSIS
	Replies to "Well done"
.DESCRIPTION
	This PowerShell script replies to 'Well done' by text-to-speech (TTS).
#>

$reply = "Thank you.","Glad to help." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
