<#
.SYNOPSIS
	Replies to "Are you sure?"
.DESCRIPTION
	This PowerShell script replies to 'Are you sure?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./are-you-sure
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Sure as hell.","Yes, absolutely.","100%." | Get-Random
& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
