<#
.SYNOPSIS
	Answers to "good morning"
.DESCRIPTION
	This PowerShell script replies to "good morning" by text-to-speech (TTS).
#>

$reply = "Good morning!", "Good morning to you too!", "Good morning early bird!", "Hey there, early bird!", "Good morning - I was just thinking about you!" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
