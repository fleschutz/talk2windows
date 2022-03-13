<#
.SYNOPSIS
	Open F: Drive 
.DESCRIPTION
	This PowerShell script launches the File Explorer with the F: drive folder.
.EXAMPLE
	PS> ./open-f-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "F drive"
& "$PSScriptRoot/open-file-explorer.ps1" "F:"
exit 0 # success
