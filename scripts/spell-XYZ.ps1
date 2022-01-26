<#
.SYNOPSIS
	Spells a Text
.DESCRIPTION
	This PowerShell script spells the given text by text-to-speech (TTS).
.PARAMETER text
        Specifies the text to spell
.EXAMPLE
	PS> ./spell-XYZ TRITON
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Part1 = "", [string]$Part2 = "", [string]$Part3 = "")

try {
	$Text = "$($Part1)$($Part2)$($Part3)"
	[char[]]$ArrayOfChars = $Text.ToUpper()
	$Reply = ""
	foreach($Char in $ArrayOfChars) {
		$Reply += "$Char "
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
        & "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
        exit 1
}