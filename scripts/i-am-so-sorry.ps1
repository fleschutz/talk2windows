<#
.SYNOPSIS
	Replies to "I'm so sorry"
.DESCRIPTION
	This PowerShell script replies to "I'm so sorry" by text-to-speech (TTS).
.EXAMPLE
	PS> ./i-am-so-sorry.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Never mind." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
