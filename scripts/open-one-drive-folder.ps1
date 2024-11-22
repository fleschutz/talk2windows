<#
.SYNOPSIS
	Opens the OneDrive folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's OneDrive folder.
#>

try {
	$folders = Resolve-Path "~/OneDrive*"
	foreach($folder in $folders) {
		& "$PSScriptRoot/open-file-explorer.ps1" "$folder"
		& "$PSScriptRoot/say.ps1" "Your OneDrive."
		exit 0 # success
	}
	throw "No OneDrive folder in home directory"
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
