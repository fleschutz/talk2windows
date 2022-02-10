<#
.SYNOPSIS
	Replies to "What about ..."
.DESCRIPTION
	This PowerShell script replies to 'What about ...?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-about-XYZ.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Sounds good.", "Why not?" | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply
exit 0 # success
