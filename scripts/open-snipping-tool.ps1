<#
.SYNOPSIS
	Starts the Snipping Tool
.DESCRIPTION
	This PowerShell script launches the Snipping Tool application.
.EXAMPLE
	PS> ./open-snipping-tool
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process SnippingTool.exe
exit 0 # success
