<#
.SYNOPSIS
	Open M: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the M: drive folder.
.EXAMPLE
	PS> ./open-m-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "M drive"
& "$PSScriptRoot/open-file-explorer.ps1" "M:"
exit 0 # success
