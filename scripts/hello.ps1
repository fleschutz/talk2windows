<#
.SYNOPSIS
	Replies to "Hi"
.DESCRIPTION
	This PowerShell script replies to 'Hi' by text-to-speech (TTS).
.EXAMPLE
	PS> ./hi
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
