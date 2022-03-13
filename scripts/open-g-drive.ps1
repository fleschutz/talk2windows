<#
.SYNOPSIS
	Open G: Drive 
.DESCRIPTION
	This PowerShell script launches the File Explorer with the G: drive folder.
.EXAMPLE
	PS> ./open-g-drive
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "G drive"
& "$PSScriptRoot/open-file-explorer.ps1" "G:"
exit 0 # success
