<#
.SYNOPSIS
	Opens the Talk2Windows folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Talk2Windows folder.
.EXAMPLE
	PS> ./open-talk-to-windows-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$TargetDir = resolve-path "$PSScriptRoot/.."
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Talk2Windows folder at $TargetDir doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
