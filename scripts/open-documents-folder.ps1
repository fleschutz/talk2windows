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
	& "$PSScriptRoot/_reply.ps1" "Your documents."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
