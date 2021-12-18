<#
.SYNOPSIS
	Opens the D: drive folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the D: drive folder.
.EXAMPLE
	PS> ./open-d-drive
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-file-explorer.ps1" "D:"
