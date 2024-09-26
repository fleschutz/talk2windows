<#
.SYNOPSIS
	Replies to: 'Are you tired?'
.DESCRIPTION
	This PowerShell script replies to 'Are you tired?' by text-to-speech (TTS).
#>

$reply = "Always.", "Never.", "Sometimes.", "From time to time." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
exit 0 # success
