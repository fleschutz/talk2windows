<#
.SYNOPSIS
	Opens the Vim manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Vim manual.
.EXAMPLE
	PS> ./open-vim-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.vim.org/docs.php"
exit 0 # success
