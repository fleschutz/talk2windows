<#
.SYNOPSIS
	Replies to "Congratulations!"
.DESCRIPTION
	This PowerShell script replies to 'Congratulations!' by text-to-speech (TTS).
.EXAMPLE
	PS> ./congratulations
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Thank you."
exit 0 # success
