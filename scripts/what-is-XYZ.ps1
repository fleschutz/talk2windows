<#
.SYNOPSIS
	Explains a term/abbreviation/etc.
.DESCRIPTION
	This PowerShell script explains the meaning of the given abbreviation by text-to-speech (TTS).

#>

param([string]$term = "")

function SpellAbbr { param([string]$Text)
	[char[]]$ArrayOfChars = $Text
	$Result = ""
	foreach($Char in $ArrayOfChars) {
		$Result += $Char + " "
	}
	return $Result
}

try {
	$files = (Get-ChildItem "$PSScriptRoot/data/abbr/*.csv")
	$Text = ""
	$PrevBasename = ""
	foreach($file in $files) {
		$table = Import-CSV "$file"
		foreach($row in $table) {
			if ($row.TERM -ne $term) { continue }
			$basename = (Get-Item "$file").Basename -Replace "_"," "
			if ($basename -ne $PrevBasename) {
				if ($PrevBasename -ne "") { $Text += ", or: " }
				$Text += "$(SpellAbbr $row.TERM) in $basename refers to $($row.MEANING) "
			} else {
				$Text += ", or: $($row.MEANING)"
			}
			$PrevBasename = $basename
		}
	}
	if ($Text -ne "") {
		& "$PSScriptRoot/say.ps1" $Text
	} else {
		& "$PSScriptRoot/say.ps1" "Sorry, $(SpellAbbr $term) is unknown to me."
		& "$PSScriptRoot/open-google-search.ps1" $term
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
