<#
.SYNOPSIS
	Opens the desktop folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's desktop folder.
.EXAMPLE
	PS> ./open-desktop-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$TargetDir = resolve-path "$HOME/Desktop"
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Desktop folder at $TargetDir doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
