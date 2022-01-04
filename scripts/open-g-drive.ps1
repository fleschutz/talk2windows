<#
.SYNOPSIS
	Opens the G: drive folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the G: drive folder.
.EXAMPLE
	PS> ./open-g-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-file-explorer.ps1" "G:"
exit 0 # success
