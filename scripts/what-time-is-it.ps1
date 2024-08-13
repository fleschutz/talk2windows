<#
.SYNOPSIS
	Replies to "What time is it?" 
.DESCRIPTION
	This PowerShell script speaks the current time by text-to-speech (TTS).
#>

[system.threading.thread]::currentThread.currentCulture = [system.globalization.cultureInfo]"en-US"
$now = (Get-Date).ToShortTimeString()
& "$PSScriptRoot/_reply.ps1" "It's $now."