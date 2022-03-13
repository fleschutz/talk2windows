<#
.SYNOPSIS
	Opens the speech settings of Windows
.DESCRIPTION
	This PowerShell script launches the speech settings of Windows.
.EXAMPLE
	PS> ./open-speech-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Speech..."
Start-Process ms-settings:speech
exit 0 # success
