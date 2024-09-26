<#
.SYNOPSIS
	Answers "say hello to <NAME>"
.DESCRIPTION
	This PowerShell script replies to "say hello to <NAME>" by text-to-speech (TTS).
#>

param([string]$Name = "Mister Nobody")
& "$PSScriptRoot/say.ps1" "Nice to meet you $Name."
