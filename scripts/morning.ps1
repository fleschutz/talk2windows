<#
.SYNOPSIS
	Reply to 'morning'
.DESCRIPTION
	This PowerShell script replies to "morning" by text-to-speech (TTS).
.EXAMPLE
	PS> ./morning
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Good morning.", "Good morning to you too.", "Well, good morning to you too.", "Good morning! How are you?", "Morning." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
