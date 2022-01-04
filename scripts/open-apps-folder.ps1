<#
.SYNOPSIS
	Opens the Apps folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the UWP apps folder.
.EXAMPLE
	PS> ./open-apps-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-file-explorer.ps1" "shell:AppsFolder"
exit 0 # success

