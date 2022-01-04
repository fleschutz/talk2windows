<#
.SYNOPSIS
	Opens the temporary folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the temporary folder.
.EXAMPLE
	PS> ./open-temporary-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function GetTempDir {
	if ("$env:TEMP" -ne "")	{ return "$env:TEMP" }
	if ("$env:TMP" -ne "")	{ return "$env:TMP" }
	if ($IsLinux) { return "/tmp" }
	return "C:\Temp"
}

try {
	$Path = GetTempDir
	if (-not(test-path "$Path" -pathType container)) {
		throw "Temporary folder at $Path doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$Path"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
