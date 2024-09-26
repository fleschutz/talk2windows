<#
.SYNOPSIS
	Replies to "Hey"
.DESCRIPTION
	This PowerShell script replies to 'Hey' by text-to-speech (TTS).
#>

$reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
