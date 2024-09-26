<#
.SYNOPSIS
	Open Y: Drive 
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Y: drive folder.
#>

try {
	if (-not(Test-Path "Y:" -pathType container)) { throw "There is no Y drive." }
        & "$PSScriptRoot/open-file-explorer.ps1" "Y:"
        & "$PSScriptRoot/say.ps1" "Your Y drive."
        exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
