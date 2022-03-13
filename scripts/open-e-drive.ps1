<#
.SYNOPSIS
	Open E: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the E: drive folder.
.EXAMPLE
	PS> ./open-e-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "E drive"
& "$PSScriptRoot/open-file-explorer.ps1" "E:"
exit 0 # success
