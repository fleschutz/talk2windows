<#
.SYNOPSIS
	Opens the OneDrive folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's OneDrive folder.
.EXAMPLE
	PS> ./open-one-drive-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$TargetDirs = resolve-path "$HOME/OneDrive*"
	foreach($TargetDir in $TargetDirs) {
		& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
		exit 0 # success
	}
	throw "No OneDrive folder at $HOME/Dropbox"
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
