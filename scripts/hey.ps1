<#
.SYNOPSIS
	Replies to "Hey"
.DESCRIPTION
	This PowerShell script replies to 'Hey' by text-to-speech (TTS).
.EXAMPLE
	PS> ./hey
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
