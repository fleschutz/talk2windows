<#
.SYNOPSIS
	Open E: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the E: drive folder.
#>

try {
        if (-not(Test-Path "E:" -pathType container)) { throw "There is no E drive." }
        & "$PSScriptRoot/open-file-explorer.ps1" "E:"
        & "$PSScriptRoot/say.ps1" "Your E drive."
        exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
