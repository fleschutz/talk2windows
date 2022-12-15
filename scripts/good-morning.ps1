<#
.SYNOPSIS
	Answers to "good morning"
.DESCRIPTION
	This PowerShell script replies to "good morning" by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-morning.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

$Reply = "Good morning!", "Good morning to you too!", "Good morning early bird!", "Hey there, early bird!", "Good morning - I was just thinking about you!" | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
