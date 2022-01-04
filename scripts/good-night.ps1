<#
.SYNOPSIS
	Replies to 'good night'
.DESCRIPTION
	This PowerShell script says a reply to 'good night' by text-to-speech (TTS).
.EXAMPLE
	PS> ./good-night
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Good night to you too.", "Good night to you my friend.", "Have a good night. Sleep well.", "Good night and sweet dreams." | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
