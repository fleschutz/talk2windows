<#
.SYNOPSIS
	Replies to "Roll a dice"
.DESCRIPTION
	This PowerShell script rolls a dice and returns the number by text-to-speech (TTS).
.EXAMPLE
	PS> ./roll-a-dice
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

$Reply = "I got", "OK, I have" | Get-Random
$Number = "1", "2", "3", "4", "5", "6" | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply $Number."
exit 0 # success
