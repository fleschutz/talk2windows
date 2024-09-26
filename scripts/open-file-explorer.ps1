<#
.SYNOPSIS
	Launches the File Explorer
.DESCRIPTION
	This PowerShell script launches the File Explorer (optional with the given path).
#>

param([string]$path = "")

try {
	if ("$path" -ne "") {
		Start-Process explorer.exe "$path"
	} else {
		Start-Process explorer.exe
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
