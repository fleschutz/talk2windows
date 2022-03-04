<#
.SYNOPSIS
	Launches the File Explorer
.DESCRIPTION
	This PowerShell script launches the File Explorer (optional with the given path).
.EXAMPLE
	PS> ./open-file-explorer
.PARAMETER Path
	Specifies the path to the folder to display 
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Path = "")

try {
	& "$PSScriptRoot/_reply.ps1" "Okay"
	if ("$Path" -ne "") {
		start-process explorer.exe "$Path"
	} else {
		start-process explorer.exe
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
