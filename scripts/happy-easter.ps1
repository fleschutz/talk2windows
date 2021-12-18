<#
.SYNOPSIS
	Replies to "Happy Easter"
.DESCRIPTION
	This PowerShell script replies to 'Happy Easter' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-easter
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Easter to you too!" | Get-Random

& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
