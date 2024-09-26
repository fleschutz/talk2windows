<#
.SYNOPSIS
	Opens the Talk2Windows folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Talk2Windows folder.
#>

try {
	$TargetDir = Resolve-Path "$PSScriptRoot/.."
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Talk2Windows folder at $TargetDir doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
