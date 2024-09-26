<#
.SYNOPSIS
	Replies to "you alright?"
.DESCRIPTION
	This PowerShell script replies to 'you alright?' by text-to-speech (TTS).
#>

$reply = "Hey!", "Hello!", "Hi there!", "Hey there!", "Hey! How's it going?", "What's up?", "What's happening?", "How goes it?" | Get-Random
& "$PSScriptRoot/say.ps1" $reply
