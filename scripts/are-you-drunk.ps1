<#
.SYNOPSIS
	Replies to: 'Are you drunk?'
.DESCRIPTION
	This PowerShell script replies to 'Are you drunk?' by text-to-speech (TTS).
#>

$reply = "Not now.", "Sometimes." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
exit 0
