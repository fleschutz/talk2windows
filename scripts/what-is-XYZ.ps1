<#
.SYNOPSIS
	Explains an Abbreviation
.DESCRIPTION
	This PowerShell script tells the maining of the given abbreviation by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-is-XYZ ECC
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$abbr = "")

function SpellAbbr { param([string]$Text)
	[char[]]$ArrayOfChars = $Text
	$Result = ""
	foreach($Char in $ArrayOfChars) {
		$Result += $Char + "."
	}
	return $Result
}

try {
	$Files = (Get-ChildItem "$PSScriptRoot/../data/abbr/*.csv")
	$Text = ""
	foreach($File in $Files) {
		$Table = Import-CSV "$File"
		foreach($Row in $Table) {
			if ($Row.Abbr -ne $abbr) { continue }
			$Basename = (Get-Item "$File").Basename
			if ($Text -ne "") { $Text += ".`n" }
			$Text += "In $Basename $(SpellAbbr $Row.Abbr) means $($Row.Term)"
		}
	}
	if ($Text -eq "") { $Text = "Sorry, I don't know what $(SpellAbbr $abbr) means." }
	& "$PSScriptRoot/_reply.ps1" "$Text"
	exit 0 # success
} catch {
	Reply "Sorry: $($Error[0])"
	exit 1
}
