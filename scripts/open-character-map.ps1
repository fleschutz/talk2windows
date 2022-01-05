<#
.SYNOPSIS
	Launches the Character Map app
.DESCRIPTION
	This PowerShell script launches the Character Map application.
.EXAMPLE
	PS> ./open-character-map
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

start-process charmap.exe
exit 0 # success
