<#
.SYNOPSIS
	Speaks a countdown
.DESCRIPTION
	This PowerShell script speaks a countdown starting from the given number (10 by default) by text-to-speech (TTS).
.PARAMETER StartNumber
	Specifies the number to start from
.EXAMPLE
	PS> ./count-down-from 60
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

param([int]$StartNumber = 10)

try {
	for ([int]$i = $StartNumber; $i -gt 0; $i--) {
		& "$PSScriptRoot/say.ps1" $i
		start-sleep -milliseconds 200
	}
	& "$PSScriptRoot/say.ps1" "zero"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
