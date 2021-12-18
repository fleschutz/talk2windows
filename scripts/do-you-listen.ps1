<#
.SYNOPSIS
	Replies to "Do you listen?"
.DESCRIPTION
	This PowerShell script replies to 'Do you listen?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./do-you-listen
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Yes.", "Sure.", "Yes, sure.", "Always." | Get-Random
& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success
