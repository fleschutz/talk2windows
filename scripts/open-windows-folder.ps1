<#
.SYNOPSIS
	Opens the Windows folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Windows folder.
#>

try {
	$TargetDir = resolve-path "$env:WINDIR"
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Windows folder at $TargetDir doesn't exist"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])."
	exit 1
}
