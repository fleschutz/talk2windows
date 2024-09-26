<#
.SYNOPSIS
	Replies to "Do you listen?"
.DESCRIPTION
	This PowerShell script replies to 'Do you listen?' by text-to-speech (TTS).
#>

$Reply = "Yes.", "Sure.", "Yes, sure.", "Always." | Get-Random
& "$PSScriptRoot/say.ps1" "$Reply"
