<#
.SYNOPSIS
	Open M: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the M: drive folder.
#>

try {
	if (-not(Test-Path "M:" -pathType container)) { throw "There is no M drive." }
	& "$PSScriptRoot/open-file-explorer.ps1" "M:"
	& "$PSScriptRoot/say.ps1" "Your M drive."
	exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}

