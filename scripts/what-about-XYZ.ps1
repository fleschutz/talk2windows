<#
.SYNOPSIS
	Replies to "What about ..."
.DESCRIPTION
	This PowerShell script replies to 'What about ...?' by text-to-speech (TTS).
#>

$reply = "Sounds good.", "Why not?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
