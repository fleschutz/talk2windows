<#
.SYNOPSIS
	Opens the user's pictures folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's pictures folder.
#>

try {
	$path = [Environment]::GetFolderPath('MyPictures')
	if (-not(Test-Path "$path" -pathType container)) { throw "Your pictures folder at $path doesn't exist (yet)"	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/_reply.ps1" "Your pictures."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}