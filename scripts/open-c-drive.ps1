<#
.SYNOPSIS
	Open C: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the C: drive folder.
.EXAMPLE
	PS> ./open-c-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "C drive"
& "$PSScriptRoot/open-file-explorer.ps1" "C:"
exit 0 # success
