<#
.SYNOPSIS
	Reply to 'morning'
.DESCRIPTION
	This PowerShell script replies to "morning" by text-to-speech (TTS).
#>

$reply = "Good morning.", "Good morning to you too.", "Well, good morning to you too.", "Good morning! How are you?", "Morning." | Get-Random
& "$PSScriptRoot/say.ps1" $reply
