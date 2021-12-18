<#
.SYNOPSIS
	Replies to "nice to meet you"
.DESCRIPTION
	This PowerShell script replies to 'nice to meet you' by text-to-speech (TTS).
.EXAMPLE
	PS> ./nice-to-meet-you
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
