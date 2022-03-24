<#
.SYNOPSIS
	Open this PC
.DESCRIPTION
	This PowerShell script launches the File Explorer with the 'This PC' view.
.EXAMPLE
	PS> ./open-this-pc
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-file-explorer.ps1" "file:"
exit 0 # success
