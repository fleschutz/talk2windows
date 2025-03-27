<#
.SYNOPSIS
	Opens the Windows folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Windows folder.
#>

try {
	$path = Resolve-Path "$env:WINDIR"
	if (-not(Test-Path "$path" -pathType container)) {
		throw "The Windows folder at $path is missing"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Your Windows folder."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
