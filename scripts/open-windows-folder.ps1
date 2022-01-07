<#
.SYNOPSIS
	Opens the Windows folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Windows folder.
.EXAMPLE
	PS> ./open-windows-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$TargetDir = resolve-path "$env:WINDIR"
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Windows folder at $TargetDir doesn't exist"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])."
	exit 1
}
