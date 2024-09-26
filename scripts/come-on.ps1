<#
.SYNOPSIS
	Replies to "Come on"
.DESCRIPTION
	This PowerShell script replies to 'Come on' by text-to-speech (TTS).
#>

$Reply = "I'm really sorry.", "I'm so sorry.", "Mea culpa!" | Get-Random
& "$PSScriptRoot/say.ps1" "$Reply"
