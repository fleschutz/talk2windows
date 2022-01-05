<#
.SYNOPSIS
	Launches the Registration Editor
.DESCRIPTION
	This PowerShell script launches the Registration Editor application.
.EXAMPLE
	PS> ./open-registration-editor
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process regedit.exe
exit 0 # success
