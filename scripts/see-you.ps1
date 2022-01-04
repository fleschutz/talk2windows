<#
.SYNOPSIS
	Answers to 'see you'
.DESCRIPTION
	This PowerShell script says a reply to "see you" by text-to-speech (TTS).
.EXAMPLE
	PS> ./see-you
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

$Reply = "Good bye.", "See you.", "Bye bye." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
