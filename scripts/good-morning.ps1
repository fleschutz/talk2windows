<#
.SYNOPSIS
	Answers to 'good morning'
.DESCRIPTION
	This PowerShell script replies to "good morning" by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-morning
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Good morning! How can I help?", "Good morning to you too.", "Good morning! How are you?" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
