<#
.SYNOPSIS
	Replies to "I'm sorry"
.DESCRIPTION
	This PowerShell script replies to "I'm sorry" by text-to-speech (TTS).
.EXAMPLE
	PS> ./i-am-sorry.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Never mind." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
