<#
.SYNOPSIS
	Opens Windows speech settings 
.DESCRIPTION
	This PowerShell script launches the Windows speech settings application.
.EXAMPLE
	PS> ./open-speech-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:speech
exit 0 # success
