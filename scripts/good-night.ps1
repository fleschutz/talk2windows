<#
.SYNOPSIS
	Replies to 'Good night'
.DESCRIPTION
	This PowerShell script replies to 'Good night' by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-night.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Good night to you too.", "Good night to you my friend.", "Have a good night.", "Good night and sweet dreams." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
