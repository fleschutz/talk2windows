<#
.SYNOPSIS
	Opens the user's pictures folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's pictures folder.
.EXAMPLE
	PS> ./open-pictures-folder
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Path = [Environment]::GetFolderPath('MyPictures')
	if (-not(Test-Path "$Path" -pathType container)) {
		throw "Pictures folder at $Path doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$Path"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}