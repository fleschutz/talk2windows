<#
.SYNOPSIS
	Shows the GDB manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the GDB manual.
.EXAMPLE
	PS> ./show-gdb-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.gnu.org/software/gdb/documentation/"
exit 0 # success
