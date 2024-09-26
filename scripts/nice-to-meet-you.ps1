<#
.SYNOPSIS
	Replies to "nice to meet you"
.DESCRIPTION
	This PowerShell script replies to 'nice to meet you' by text-to-speech (TTS).
#>

$reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
