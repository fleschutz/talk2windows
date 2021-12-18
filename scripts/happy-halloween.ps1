<#
.SYNOPSIS
	Replies to "Happy Halloween"
.DESCRIPTION
	This PowerShell script replies to 'Happy Halloween' by text-to-speech (TTS).
.EXAMPLE
	PS> ./happy-halloween
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Happy Halloween to you too!" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
