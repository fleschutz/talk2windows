<#
.SYNOPSIS
	Opens the Dropbox folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's Dropbox folder.
#>

try {
	$TargetDirs = Resolve-Path "~/Dropbox*"
	foreach($TargetDir in $TargetDirs) {
		& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
		& "$PSScriptRoot/say.ps1" "Your Dropbox."
		exit 0 # success
	}
	throw "No Dropbox folder in your home directory."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
