<#
.SYNOPSIS
	Launches the System Information app
.DESCRIPTION
	This PowerShell script launches the System Information application.
.EXAMPLE
	PS> ./open-system-information
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process msinfo32.exe
exit 0 # success
