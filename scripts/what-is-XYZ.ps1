<#
.SYNOPSIS
	Explains an Abbreviation
.DESCRIPTION
	This PowerShell script explains the meaning of the given abbreviation by text-to-speech (TTS).
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
	$PrevBasename = ""
	foreach($File in $Files) {
		$Table = Import-CSV "$File"
		foreach($Row in $Table) {
			if ($Row.Abbr -ne $abbr) { continue }
			$Basename = (Get-Item "$File").Basename
			if ($Basename -ne $PrevBasename) {
				$Text += "`n In $Basename $(SpellAbbr $Row.Abbr) may refer to $($Row.Term)"
			} else {
				$Text += ", or: $($Row.Term)"
			}
			$PrevBasename = $Basename
		}
	}
	if ($Text -ne "") {
		& "$PSScriptRoot/_reply.ps1" "$Text"
	} else {
		& "$PSScriptRoot/_reply.ps1" "Sorry, $(SpellAbbr $abbr) is unknown to me. Let's google this..."
		& "$PSScriptRoot/open-google-search.ps1" $abbr
	}
	exit 0 # success
} catch {
	Reply "Sorry: $($Error[0])"
	exit 1
}
