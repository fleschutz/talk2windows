<#
.SYNOPSIS
	Opens the temporary folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the temporary folder.
#>

function GetTempDir {
	if ("$env:TEMP" -ne "")	{ return "$env:TEMP" }
	if ("$env:TMP" -ne "")	{ return "$env:TMP" }
	return "C:\Temp"
}

try {
	$path = GetTempDir
	if (-not(Test-Path "$path" -pathType container)) { throw "The temporary folder at $path doesn't exist yet." }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Here it is."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
