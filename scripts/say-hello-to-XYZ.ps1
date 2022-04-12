<#
.SYNOPSIS
	Answers "say hello to <NAME>"
.DESCRIPTION
	This PowerShell script replies to "say hello to <NAME>" by text-to-speech (TTS).
.EXAMPLE
	PS> ./say-hello-to-XYZ Tom
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$Name = "Mister Nobody")
& "$PSScriptRoot/_reply.ps1" "Nice to meet you $Name."
exit 0 # success