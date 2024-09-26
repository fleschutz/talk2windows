<#
.SYNOPSIS
	Replies to "Roll a dice"
.DESCRIPTION
	This PowerShell script rolls a dice and returns the number by text-to-speech (TTS).
#>

$reply = "I got", "OK, I have" | Get-Random
$number = "1", "2", "3", "4", "5", "6" | Get-Random
& "$PSScriptRoot/say.ps1" "$reply $number."
