<#
.SYNOPSIS
	Replies to "What's up?"
.DESCRIPTION
	This PowerShell script replies to 'What's up?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./whats-up
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
