<#
.SYNOPSIS
	Check the downloads
.DESCRIPTION
	This PowerShell script checks the downloads folder.
.EXAMPLE
	PS> ./check-downloads
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
	if (-not(Test-Path "$Path" -pathType container)) {
		throw "Downloads folder at $Path doesn't exist (yet)"
	}
	[int]$NumFolders = 0
	[int]$NumFiles = 0
	$Items = Get-ChildItem "$Path/*"
	foreach($Item in $Items) {
		if (Test-Path "$Item" -pathType container) { $NumFolders++ } else { $NumFiles++ }
	}
	if ($NumFolders -eq 0) {
		if ($NumFiles -eq 0) {		$Reply = "No downloads yet."
		} elseif ($NumFiles -eq 1) {	$Reply = "One file downloaded."
		} else {			$Reply = "$NumFiles files downloaded."
		}
	} elseif ($NumFiles -eq 1) {		$Reply = "$NumFolders folder and one file downloaded."
	} else {				$Reply = "$NumFolders folder and $NumFiles files downloaded."
	}
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}