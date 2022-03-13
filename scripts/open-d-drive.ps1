<#
.SYNOPSIS
	Open D: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the D: drive folder.
.EXAMPLE
	PS> ./open-d-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "D drive"
& "$PSScriptRoot/open-file-explorer.ps1" "D:"
exit 0 # success
