<#
.SYNOPSIS
	Check Recycle Bin
.DESCRIPTION
	This PowerShell script checks the content of the user's recycle bin folder.
.EXAMPLE
	PS> ./check-recycle-bin
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

try {
	$Shell = New-Object -com shell.application
	$RecycleBin = $Shell.Namespace(10)
	[int]$NumFolders = 0
	[int]$NumFiles = 0
	foreach($Item in $RecycleBin.items()) {
		if ($Item.IsFolder()) {	$NumFolders++; } else {	$NumFiles++ }
	}
	if (($NumFolders -eq 0) -and ($NumFiles -eq 0)) {
		$Reply = "It's empty."
	} else {
		$Reply = "It contains"
		if ($NumFolders -eq 1) {	$Reply += " one folder"
		} elseif ($NumFolders -gt 1) {  $Reply += " $NumFolders folders"
		} 

		if ($NumFiles -eq 1) {		$Reply += " one file"
		} elseif ($NumFiles -gt 1) {	$Reply += " $NumFiles files"
		} 
		$Reply += "."
	} 
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
