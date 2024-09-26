<#
.SYNOPSIS
	Opens the user's downloads
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the user's downloads folder.
#>

try {
	$path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
	if (-not(Test-Path "$path" -pathType container)) { throw "Your downloads folder at $path doesn't exist (yet)" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your downloads."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
