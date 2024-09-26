<#
.SYNOPSIS
	Open F: Drive 
.DESCRIPTION
	This PowerShell script launches the File Explorer with the F: drive folder.
#>

try {
        if (-not(Test-Path "F:" -pathType container)) { throw "There is no F drive." }
        & "$PSScriptRoot/open-file-explorer.ps1" "F:"
        & "$PSScriptRoot/say.ps1" "Your F drive."
        exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
