<#
.SYNOPSIS
	Spells a word
.DESCRIPTION
	This PowerShell script spells the given word by text-to-speech (TTS).
.PARAMETER word
        Specifies the word to spell
.EXAMPLE
	PS> ./spell-word
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([string]$word = "")

try {
	[char[]]$ArrayOfChars = $word.ToUpper()
	$Reply = ""
	foreach($Char in $ArrayOfChars) {
		$Reply += $Char
		$Reply += " "
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
        & "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
        exit 1
}