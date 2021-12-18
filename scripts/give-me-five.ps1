<#
.SYNOPSIS
	Replies to "Give me five"
.DESCRIPTION
	This PowerShell script replies to 'Give me five' by text-to-speech (TTS).
.EXAMPLE
	PS> ./give-me-five
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Thanks!", "Hi five.", "Hi five to all of yours.", "Four plus one.", "Three plus two." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
