<#
.SYNOPSIS
	Opens the OneDrive folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's OneDrive folder.
#>

try {
	$TargetDirs = Resolve-Path "~/OneDrive*"
	foreach($TargetDir in $TargetDirs) {
		& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
		& "$PSScriptRoot/say.ps1" "Your OneDrive folder."
		exit 0 # success
	}
	throw "No OneDrive folder in home directory"
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
