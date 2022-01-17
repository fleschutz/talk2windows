<#
.SYNOPSIS
	Open H: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the H: drive folder.
.EXAMPLE
	PS> ./open-h-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-file-explorer.ps1" "H:"
exit 0 # success
