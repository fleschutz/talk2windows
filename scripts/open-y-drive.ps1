<#
.SYNOPSIS
	Open Y: Drive 
.DESCRIPTION
	This PowerShell script launches the File Explorer with the Y: drive folder.
.EXAMPLE
	PS> ./open-y-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-file-explorer.ps1" "Y:"
exit 0 # success
