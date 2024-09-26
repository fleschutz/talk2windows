<#
.SYNOPSIS
	Replies to "Are you sure?"
.DESCRIPTION
	This PowerShell script replies to 'Are you sure?' by text-to-speech (TTS).
#>

$reply = "Sure as hell.", "Yes, absolutely.", "Hundred %." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
exit 0 # success
