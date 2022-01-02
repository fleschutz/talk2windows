<#
.SYNOPSIS
	Spells Text
.DESCRIPTION
	This PowerShell script spells the given text by text-to-speech (TTS).
.PARAMETER text
        Specifies the text to spell
.EXAMPLE
	PS> ./spell
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([string]$text = "")

try {
	[char[]]$ArrayOfChars = $text.ToUpper()
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