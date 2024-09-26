<#
.SYNOPSIS
	Replies to "Talk to me"
.DESCRIPTION
	This PowerShell script replies by text-to-speech (TTS).
#>

$reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "What's up?", "What's happening?", "How goes it?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
