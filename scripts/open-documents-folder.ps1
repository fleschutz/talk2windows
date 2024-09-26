<#
.SYNOPSIS
	Opens the documents folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the documents folder.
#>

try {
        $path = [Environment]::GetFolderPath('MyDocuments')
	if (-not(Test-Path "$path" -pathType container)) { throw "Your documents folder at $path doesn't exist (yet)" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Your documents."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
